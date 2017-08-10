using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Xml.Linq;
using Rti.Model;

namespace Rti.ViewModel.Entities
{
    public partial class ShipmentViewModel
    {
        public string FullNumber
        {
            get { return string.Format("{0}{1}", SortOrder, IsReplace ? "�" : IsAddition ? "�" : string.Empty); }
            set
            {
                var sortOrder = _sortOrder;
                if (int.TryParse(value, NumberStyles.Any, CultureInfo.InvariantCulture, out sortOrder))
                {
                    SortOrder = sortOrder;
                }
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

        public decimal ShipmentSum => Entity.ShipmentItems.Aggregate((decimal)0, (res, o) => res + o.Count * o.Price);

        public decimal? RequestSum => Request.Sum;
        public decimal SumDiff => (RequestSum ?? 0) - ShipmentSum;

        public string DetailsMultilined => Details.Replace(';', '\n');

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (!IsMapping)
            {
                if (propertyName.In("Date", "IsReplace", "IsAddition"))
                    GetSortOrder();
            }
            if (propertyName.In("SortOrder", "IsReplace", "IsAddition"))
                OnPropertyChanged("FullNumber");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("FullNumber", FullNumber));
            element.Add(new XAttribute("Grounding", Grounding));
            element.Add(new XAttribute("ShipmentSum", ShipmentSum));
            element.Add(new XAttribute("RequestSum", RequestSum ?? 0));
            element.Add(new XAttribute("SumDiff", SumDiff));
        }

        public void GetSortOrder()
        {
            SortOrder = RepositoryFactory.GetShipmentRepository().GetNextSortOrder(Date, IsReplace, IsAddition);
        }
    }
}