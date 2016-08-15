<<<<<<< HEAD
ï»¿using System.Xml.Linq;
=======
using System.Xml.Linq;
>>>>>>> origin/develop
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    public partial class ReportOfCompletionItemViewModel
    {
<<<<<<< HEAD
        public string Representation { get { return string.Format("{0} Ð² ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ðµ {1} ÑˆÑ‚.", GetEquipmentTypeString(), Count); } }
=======
        public string Representation { get { return string.Format("{0} â êîëè÷åñòâå {1} øò.", GetEquipmentTypeString(), Count); } }
>>>>>>> origin/develop

        private string GetEquipmentTypeString()
        {
            switch (EquipmentTypeEnum)
            {
                case EquipmentType.PressForm:
<<<<<<< HEAD
                    return "ÐŸÑ€ÐµÑÑÑ„Ð¾Ñ€Ð¼Ð°";
                case EquipmentType.Proboinik:
                    return "ÐŸÑ€Ð¾Ð±Ð¾Ð¹Ð½Ð¸Ðº";
                case EquipmentType.Filiera:
                    return "Ð¤Ð¸Ð»ÑŒÐµÑ€Ð°";
                case EquipmentType.Shablon:
                    return "Ð¨Ð°Ð±Ð»Ð¾Ð½";
                case EquipmentType.Shtanets:
                    return "Ð¨Ñ‚Ð°Ð½ÐµÑ†";
=======
                    return "Ïðåññôîðìà";
                case EquipmentType.Proboinik:
                    return "Ïðîáîéíèê";
                case EquipmentType.Filiera:
                    return "Ôèëüåðà";
                case EquipmentType.Shablon:
                    return "Øàáëîí";
                case EquipmentType.Shtanets:
                    return "Øòàíåö";
>>>>>>> origin/develop
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