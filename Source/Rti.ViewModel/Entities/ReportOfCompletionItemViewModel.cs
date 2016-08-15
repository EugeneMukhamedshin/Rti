using System.Xml.Linq;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    public partial class ReportOfCompletionItemViewModel
    {
        public string Representation { get { return string.Format("{0} в количестве {1} шт.", GetEquipmentTypeString(), Count); } }

        private string GetEquipmentTypeString()
        {
            switch (EquipmentTypeEnum)
            {
                case EquipmentType.PressForm:
                    return "Прессформа";
                case EquipmentType.Proboinik:
                    return "Пробойник";
                case EquipmentType.Filiera:
                    return "Фильера";
                case EquipmentType.Shablon:
                    return "Шаблон";
                case EquipmentType.Shtanets:
                    return "Штанец";
                default:
                    return null;
            }
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Representation", Representation));}
    }
}