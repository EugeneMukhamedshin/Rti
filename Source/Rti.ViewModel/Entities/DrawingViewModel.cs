using System.Collections.Generic;

namespace Rti.ViewModel.Entities
{
    public partial class DrawingViewModel : IValidatable
    {
        public string Measurements
        {
            get
            {
                return string.Format("{0} : {1} : {2} : {3} : {4}",
                    Width, Length, Thickness, InnerDiameter, OuterDiameter);
            }
        }

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
                new ValidationRule(o => o.Name != null, "�� ������ ������������ �������")
            };
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("Width", "Length", "Thickness", "InnerDiameter", "OuterDiameter"))
                OnPropertyChanged("Measurements");
        }
    }
}