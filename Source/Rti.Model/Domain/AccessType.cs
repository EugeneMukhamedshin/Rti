using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum AccessType
    {
        [Display(Name = "Только журналы")]
        OnlyJournals = 0,
        [Display(Name = "Полный без отчетов")]
        FullWithoutReports = 1,
        [Display(Name = "Полный доступ")]
        Full = 2,
        [Display(Name = "Администратор")]
        Admin = 3
    }
}