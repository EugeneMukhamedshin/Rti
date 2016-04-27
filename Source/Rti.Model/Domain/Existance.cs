using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum Existance
    {
        [Display(Name = "В наличии")]
        Exist,
        [Display(Name = "Отсутствует")]
        NotExist,
        [Display(Name = "В ремонте")]
        InMaintenance,
        [Display(Name = "Утеряна")]
        Lost,
        [Display(Name = "Изготовление")]
        InProduction
    }
}
