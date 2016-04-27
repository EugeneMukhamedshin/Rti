using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum ProcessType
    {
        [Display(Name = "Подготовительное")]
        Preparing = 1,
        [Display(Name = "Чистка/ремонт формы")]
        FormCleaning = 2,
        [Display(Name = "Фильера")]
        DieSelecting = 3,
        [Display(Name = "Вальцовка")]
        Rolling = 4,
        [Display(Name = "Шприцевание")]
        Extrusion = 5,
        [Display(Name = "Программирование")]
        Programming = 6,
        [Display(Name = "Загрузка")]
        Loading = 7,
        [Display(Name = "Вулканизация/вырубка")]
        CuringOrCutting = 8,
        [Display(Name = "Выгрузка")]
        Unloading = 9,
        [Display(Name = "Простой технологический")]
        TechnologyDowntime = 10,
        [Display(Name = "Простой по вине работника")]
        ExecutorDowntime = 11,
        [Display(Name = "Общее время вулканизации/вырубки")]
        SummaryCuttingTime = 12,
        [Display(Name = "Процесс")]
        Other = 13
    }
}