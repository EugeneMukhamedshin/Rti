using System.Xml.Linq;
using Rti.Model;

namespace Rti.ViewModel.Entities
{
    public partial class MaterialArrivalRecordViewModel
    {
        public decimal Sum { get { return Price*Count; } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("Price", "Count"))
                OnPropertyChanged("Sum");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Sum", Sum));
        }
    }
}