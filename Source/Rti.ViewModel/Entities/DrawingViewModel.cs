using System.Collections.Generic;
using Rti.Model;

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
                return (FactCalculation == null || FactCalculation.Price == null)
                    ? PlanCalculation == null ? null : PlanCalculation.Price
                    : FactCalculation.Price;
            }
        }

        public decimal? FactCalculationPrice
        {
            get { return FactCalculation != null ? FactCalculation.Price : null; }
        }

        public decimal? PlanCalculationPrice
        {
            get { return PlanCalculation != null ? PlanCalculation.Price : null; }
        }

        /// <summary>
        /// Выполненное количество по данному чертежу
        /// </summary>
        public int DoneCount { get; set; }

        /// <summary>
        /// Не выполненное количество по данному чертежу
        /// </summary>
        public int UndoneCount { get; set; }

        public int AttachmentsCount { get; set; }

        public bool AttachmentsExists => AttachmentsCount > 0;

        public void RaiseCalculationPriceChanged(){
            OnPropertyChanged("CalculationPrice");
            OnPropertyChanged("FactCalculationPrice");
            OnPropertyChanged("PlanCalculationPrice");
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
                MassCalculation.CalculatedCallback = () => OnPropertyChanged("MassCalculation");
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