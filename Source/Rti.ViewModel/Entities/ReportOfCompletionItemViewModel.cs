using System.Xml.Linq;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    public partial class ReportOfCompletionItemViewModel
    {
        public string Representation { get { return string.Format("{0} {1}� ���������� {2} ��.", GetEquipmentTypeString(), Drawing == null ? string.Empty : string.Format("({0}) ", Drawing.FullName), Count); } }

        private string GetEquipmentTypeString()
        {
            switch (EquipmentTypeEnum)
            {
                case EquipmentType.PressForm:
                    return "����������";
                case EquipmentType.Proboinik:
                    return "���������";
                case EquipmentType.Filiera:
                    return "�������";
                case EquipmentType.Shablon:
                    return "������";
                case EquipmentType.Shtanets:
                    return "������";
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