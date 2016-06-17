using System.Collections.Generic;

namespace Rti.ViewModel.Entities
{
    public partial class DrawingViewModel : IValidatable
    {
        private bool _shruffPercentEntering;
        private bool _massWithShruffEntering;

        public string FullName
        {
            get { return string.Format("{0}.{1}", Group == null ? null : Group.Name, Name); }
        }

        public string Measurements
        {
            get
            {
                return string.Format("{0} : {1} : {2} : {3} : {4}",
                    Width, Length, Thickness, InnerDiameter, OuterDiameter);
            }
        }

        public CalculationViewModel ActualCalculation { get { return FactCalculation ?? PlanCalculation; } }

        public decimal? CalculationPrice
        {
            get
            {
                return (FactCalculation == null || FactCalculation.Summary == null)
                    ? PlanCalculation == null ? null : PlanCalculation.Summary
                    : FactCalculation.Summary;
            }
        }

        public void RaiseCalculationPriceChanged()
        {
            OnPropertyChanged("CalculationPrice");
        }

        protected override IEnumerable<ValidationRule> GetValidationRules()
        {
            return new List<ValidationRule>()
            {
                new ValidationRule(o => o.Name != null, "Не задано наименование чертежа")
            };
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "MassCalculation" && MassCalculation != null)
                MassCalculation.PropertyChanged += (sender, args) =>
                {
                    OnPropertyChanged("MassCalculation");
                };
            if (propertyName.In("Width", "Length", "Thickness", "InnerDiameter", "OuterDiameter"))
                OnPropertyChanged("Measurements");
            if (!IsMapping)
            {
                if (propertyName.In("ShruffPercent", "MassCalculation") && !_massWithShruffEntering)
                {
                    _shruffPercentEntering = true;
                    MassWithShruff = (MassCalculation == null ? 0 : MassCalculation.CalculatedMass)*
                                     (1 + ShruffPercent/100);
                    _shruffPercentEntering = false;
                }
                if (propertyName.In("MassWithShruff") && !_shruffPercentEntering)
                {
                    _massWithShruffEntering = true;
                    ShruffPercent = null;
                    _massWithShruffEntering = false;
                }
            }
        }
    }
}