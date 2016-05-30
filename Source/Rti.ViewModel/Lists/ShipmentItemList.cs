using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class ShipmentItemList: EntityList<ShipmentItemViewModel, ShipmentItem>
    {
        private readonly List<ShipmentItemViewModel> _deletedItems = new List<ShipmentItemViewModel>();

        public ShipmentViewModel Shipment { get; set; }

        public List<RequestDetailViewModel> RequestDetailsSource { get; set; }

        public ShipmentItemList(ShipmentViewModel shipment, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            Shipment = shipment;
            Shipment.PropertyChanged += Shipment_PropertyChanged;
        }

        void Shipment_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == "Request")
            {
                Items.Clear();
                RefreshRequestDetails();
            }
        }

        public override void Refresh()
        {
            base.Refresh();
            RefreshRequestDetails();
        }

        protected override IEnumerable<ShipmentItemViewModel> GetItems()
        {
            return RepositoryFactory.GetShipmentItemRepository().GetByShipmentId(Shipment.Id).Select(o => new ShipmentItemViewModel(o, RepositoryFactory)).OrderBy(o => o.SortOrder).ToList();
        }

        public void RefreshRequestDetails()
        {
            RequestDetailsSource = RepositoryFactory.GetRequestDetailRepository().GetByRequestId(Shipment.Request.Id).Select(o => new RequestDetailViewModel(o, RepositoryFactory)).ToList();
        }

        protected override ShipmentItemViewModel DoCreateNewEntity()
        {
            return new ShipmentItemViewModel(null, RepositoryFactory)
            {
                Shipment = Shipment,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(ShipmentItemViewModel entity)
        {
            _deletedItems.Add(entity);
        }

        protected override bool AcceptFind(ShipmentItemViewModel entity, string searchText)
        {
            return false;
        }

        public void SaveChanges()
        {
            foreach (var deletedItem in _deletedItems)
            {
                deletedItem.DeleteEntity();
            }
            _deletedItems.Clear();
            foreach (var item in Items)
            {
                if (item.IsChanged || item.IsNewEntity)
                    item.SaveEntity();
            }
        }
    }
}
