using System.Xml.Linq;

namespace Rti.ViewModel.Entities
{
    public partial class ShipmentViewModel
    {
        public string FullNumber
        {
            get
            {
                return string.Format("{0}{1}", SortOrder, IsReplace ? "Б" : IsAddition ? "Д" : string.Empty);
            }
        }

        public string Grounding
        {
            get { return string.Format("Счет №{0} от {1:dd.MM.yyyy}г.", Request.Number, Request.InvoiceDate); }
        }

        public string CarModel { get { return Driver == null ? null : Driver.CarModel; } }

        public string CarNumber { get { return Driver == null ? null : Driver.Number; } }

        public string DriverDocument { get { return Driver == null ? null : Driver.Document; } }

        public string CargoType { get { return "РТИ"; } }

        public string Documents { get { return "Паспорт"; } }

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