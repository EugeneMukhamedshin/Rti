using System.Collections.Generic;

namespace Rti.ViewModel.Entities
{
    public partial class DrawingViewModel : IValidatable
    {
        protected override IEnumerable<ValidationRule> GetValidationRules()
        {
            return new List<ValidationRule>()
            {
                new ValidationRule(o => o.Name != null, "Не задано наименование чертежа")
            };
        }
    }
}