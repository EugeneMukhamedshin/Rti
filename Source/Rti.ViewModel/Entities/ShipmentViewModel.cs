<<<<<<< HEAD
ï»¿using System.Xml.Linq;
=======
using System.Xml.Linq;
>>>>>>> origin/develop

namespace Rti.ViewModel.Entities
{
    public partial class ShipmentViewModel
    {
        public string FullNumber
        {
            get
            {
<<<<<<< HEAD
                return string.Format("{0}{1}", SortOrder, IsReplace ? "Ð‘" : IsAddition ? "Ð”" : string.Empty);
=======
                return string.Format("{0}{1}", SortOrder, IsReplace ? "Á" : IsAddition ? "Ä" : string.Empty);
>>>>>>> origin/develop
            }
        }

        public string Grounding
        {
<<<<<<< HEAD
            get { return string.Format("Ð¡Ñ‡ÐµÑ‚ â„–{0} Ð¾Ñ‚ {1:dd.MM.yyyy}Ð³.", Request.Number, Request.InvoiceDate); }
=======
            get { return string.Format("Ñ÷åò ¹{0} îò {1:dd.MM.yyyy}ã.", Request.Number, Request.InvoiceDate); }
>>>>>>> origin/develop
        }

        public string CarModel { get { return Driver == null ? null : Driver.CarModel; } }

        public string CarNumber { get { return Driver == null ? null : Driver.Number; } }

        public string DriverDocument { get { return Driver == null ? null : Driver.Document; } }

<<<<<<< HEAD
        public string CargoType { get { return "Ð Ð¢Ð˜"; } }

        public string Documents { get { return "ÐŸÐ°ÑÐ¿Ð¾Ñ€Ñ‚"; } }
=======
        public string CargoType { get { return "ÐÒÈ"; } }

        public string Documents { get { return "Ïàñïîðò"; } }
>>>>>>> origin/develop

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("SortOrder", "IsReplace", "IsAddition"))
                OnPropertyChanged("FullNumber");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Grounding", Grounding));
        }
    }
}