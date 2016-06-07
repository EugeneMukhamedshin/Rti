using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum EquipmentType
    {
        [Display(Name = "����������")]
        PressForm = 0,
        [Display(Name = "������")]
        Shtanets = 1,
        [Display(Name = "�������")]
        Filiera = 2,
        [Display(Name = "������")]
        Shablon = 3,
        [Display(Name = "���������")]
        Proboinik = 4
    }
}