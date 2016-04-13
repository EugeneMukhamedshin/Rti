using System.Collections.Generic;

namespace Rti.ViewModel.Entities
{
    public partial class DrawingViewModel : IValidatable
    {
        public string Measurements
        {
            get
            {
                return string.Format("Ш:{0:f3},Д:{1:f3},Т:{2:f3},ВД:{3:f3},НД:{4:f3}",
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