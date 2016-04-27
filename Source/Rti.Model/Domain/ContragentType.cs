using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum ContragentType
    {
        [Display(Name = "Заказчик")]
        Customer = 0,
        [Display(Name = "Поставщик")]
        Supplier = 1
    }
}