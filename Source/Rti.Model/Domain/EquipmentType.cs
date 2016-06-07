using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum EquipmentType
    {
        [Display(Name = "Прессформа")]
        PressForm = 0,
        [Display(Name = "Штанец")]
        Shtanets = 1,
        [Display(Name = "Фильера")]
        Filiera = 2,
        [Display(Name = "Шаблон")]
        Shablon = 3,
        [Display(Name = "Пробойник")]
        Proboinik = 4
    }
}