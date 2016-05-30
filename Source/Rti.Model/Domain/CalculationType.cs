using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum CalculationType
    {
        [Display(Name = "Плановая")]
        Plan,
        [Display(Name = "Фактическая")]
        Fact
    }
}