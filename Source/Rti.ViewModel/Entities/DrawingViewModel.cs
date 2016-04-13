using System.Collections.Generic;

namespace Rti.ViewModel.Entities
{
    public partial class DrawingViewModel : IValidatable
    {
        public string Measurements
        {
            get
            {
                return string.Format("{0:f3} : {1:f3} : {2:f3} : {3:f3} : {4:f3}",
                    Width, Length, Thickness, InnerDiameter, OuterDiameter);
            }
        }

        protected override IEnumerable<ValidationRule> GetValidationRules()
        {
            return new List<ValidationRule>()
            {
                new ValidationRule(o => o.Name != null, "Не задано наименование чертежа")
            };
        }
    }
}