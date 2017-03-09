using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using Rti.Model;

namespace Rti.ViewModel.Entities
{
    public partial class ShipmentViewModel
    {
        public string FullNumber
        {
            get
            {
                return string.Format("{0}{1}", SortOrder, IsReplace ? "�" : IsAddition ? "�" : string.Empty);
            }
        }

        public string Grounding
        {
            get { return string.Format("���� �{0} �� {1:dd.MM.yyyy}�.", Request.Number, Request.InvoiceDate); }
        }

        public string CarModel { get { return Driver == null ? null : Driver.CarModel; } }

        public string CarNumber { get { return Driver == null ? null : Driver.Number; } }

        public string DriverDocument { get { return Driver == null ? null : Driver.Document; } }

        public string CargoType { get { return "���"; } }

        public string Documents { get { return "�������"; } }

        public string Details => Entity.ShipmentItems.Aggregate(string.Empty,
            (res, o) =>
                $"{res}{(res == string.Empty ? string.Empty : ";")}{o.RequestDetail.Detail.Name} {o.RequestDetail.Group.Name}.{o.RequestDetail.Drawing.Name} ({o.Count}��.)");

        public string DetailsMultilined => Details.Replace(';', '\n');

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (!IsMapping)
            {
                if (propertyName.In("Date", "IsReplace", "IsAddition"))
                    GetSortOrder();
                if (propertyName.In("SortOrder", "IsReplace", "IsAddition"))
                    OnPropertyChanged("FullNumber");
            }
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Grounding", Grounding));
        }

        public void GetSortOrder()
        {
            SortOrder = RepositoryFactory.GetShipmentRepository().GetNextSortOrder(Date, IsReplace, IsAddition);
        }
    }
}