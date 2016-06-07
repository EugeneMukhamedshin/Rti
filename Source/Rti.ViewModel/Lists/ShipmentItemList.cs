using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class ShipmentItemList: EntityList<ShipmentItemViewModel, ShipmentItem>
    {
        private readonly List<ShipmentItemViewModel> _deletedItems = new List<ShipmentItemViewModel>();
        private readonly Lazy<Constant> _constants;

        public DelegateCommand AddItemCommand { get; set; }

        public ShipmentViewModel Shipment { get; set; }

        public List<RequestDetailViewModel> RequestDetailsSource { get; set; }

        public decimal? Sum { get { return Items.Sum(o => o.Sum); } }

        public decimal? SumWithNds { get { return Items.Sum(o => o.SumWithNds); } }

        public double? NetMass
        {
            get
            {
                return
                    Items.Sum(
                        o => o.Count*(
                            o.RequestDetail != null && o.RequestDetail.Drawing != null &&
                            o.RequestDetail.Drawing.FactMass != null
                                ? o.RequestDetail.Drawing.FactMass
                                : o.RequestDetail != null && o.RequestDetail.Drawing != null &&
                                  o.RequestDetail.Drawing.MassCalculation != null
                                    ? o.RequestDetail.Drawing.MassCalculation.CalculatedMass
                                    : null)) / 1000;
            }
        }

        public ShipmentItemList(ShipmentViewModel shipment, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            _constants = new Lazy<Constant>(() => RepositoryFactory.GetConstantRepository().GetActual());
            Shipment = shipment;
            AddItemCommand = new DelegateCommand(
                "Добавить строку",
                o => true,
                o => AddItem());
        }

        private void AddItem()
        {
            var newItem = DoCreateNewEntity();
            Items.Add(newItem);
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            Items.CollectionChanged += Items_CollectionChanged;

            RefreshAndResubscribeItems();
        }

        private void RefreshAndResubscribeItems()
        {
            RefreshSummary();
            foreach (var item in Items)
            {
                item.PropertyChanged -= item_PropertyChanged;
                item.PropertyChanged += item_PropertyChanged;
            }
        }

        void Items_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            RefreshAndResubscribeItems();
        }

        private void RefreshSummary()
        {
            OnPropertyChanged("Sum");
            OnPropertyChanged("SumWithNds");
            OnPropertyChanged("NetMass");
        }

        void item_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName.In("Count", "RealPrice", "Price"))
                RefreshSummary();
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
            RequestDetailsSource = Shipment.Request != null ? RepositoryFactory.GetRequestDetailRepository().GetByRequestId(Shipment.Request.Id).Select(o => new RequestDetailViewModel(o, RepositoryFactory)).ToList() : new List<RequestDetailViewModel>();
        }

        protected override ShipmentItemViewModel DoCreateNewEntity()
        {
            return new ShipmentItemViewModel(null, RepositoryFactory)
            {
                Shipment = Shipment,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
                NdsPercent = _constants.Value.Nds
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
                RepositoryFactory.GetShipmentItemWorkItemRepository().DeleteByShipmentItemId(deletedItem.Id);
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
