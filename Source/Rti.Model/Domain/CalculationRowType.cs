using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum CalculationRowType
    {
        [Display(Name = "Сырье и материалы")]
        ParentMaterials,
        [Display(Name = "Материал")]
        MainMaterial,
        [Display(Name = "Резиновая смесь")]
        Rubber,
        [Display(Name = "Клей")]
        Clue,
        [Display(Name = "Арматура")]
        Armature,
        [Display(Name = "Песок")]
        Sand,
        [Display(Name = "Ткань")]
        Textile,
        [Display(Name = "Другое")]
        OtherMaterial,
        [Display(Name = "Транспортные")]
        Transport,
        [Display(Name = "Основная зарплата")]
        MainSalary,
        [Display(Name = "Дополнительная зарплата")]
        AdditionalSalary,
        [Display(Name = "Отчисления ЕСН")]
        FixedTax,
        [Display(Name = "Общецеховые")]
        TotalDivision,
        [Display(Name = "Общепроизводственные")]
        TotalManufacture,
        [Display(Name = "Итого")]
        MainSummary,
        [Display(Name = "Электроэнергия для формовых")]
        PowerForFormed,
        [Display(Name = "Электроэнергия прочая")]
        OtherPower,
        [Display(Name = "Итого")]
        MainAndPowerSummary,
        [Display(Name = "Непредвиденные")]
        Unforseen,
        [Display(Name = "Себестоимость")]
        NetCost,
        [Display(Name = "Рентабельность")]
        Profitability,
        [Display(Name = "Цена")]
        Price,
        [Display(Name = "НДС")]
        NdsTax,
        [Display(Name = "Всего")]
        Summary
    }
}