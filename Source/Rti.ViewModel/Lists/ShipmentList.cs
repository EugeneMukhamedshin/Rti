using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class ShipmentList : EntityList<ShipmentViewModel, Shipment>
    {
        private DrawingViewModel _drawing;

        /// <summary>
        /// Чертеж для фильтрации заявок
        /// </summary>
        public DrawingViewModel Drawing
        {
            get { return _drawing; }
            set
            {
                if (Equals(value, _drawing)) return;
                _drawing = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand AddShipmentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public ShipmentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(ShipmentViewModel), typeof(EditViewModel.ShipmentEdit)));

            AddShipmentCommand = new DelegateCommand(
               "Добавить отгрузку",
               o => true,
               o => AddShipment());
            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void AddShipment()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая отгрузка", false) && StartDate <= record.Date && record.Date <= EndDate)
                Items.Add(record);
        }

        protected override IEnumerable<ShipmentViewModel> GetItems()
        {
            var shipments = RepositoryFactory.GetShipmentRepository()
                .GetByPeriod(StartDate, EndDate)
                .Select(o => new ShipmentViewModel(o, RepositoryFactory) {})
                .OrderBy(o => o.SortOrder)
                .ToList();
            var shipmentDetails =
                RepositoryFactory.GetShipmentItemRepository().GetByShipmentIds(shipments.Select(o => o.Id).ToArray());
            foreach (var shipment in shipments)
            {
                shipment.Details = shipmentDetails.Where(o => o.Shipment.Id == shipment.Id)
                    .Aggregate(string.Empty,
                        (res, o) =>
                            string.Format("{0}{1}{2}", res, res == string.Empty ? string.Empty : ";",
                                string.Format("{0} {1}.{2}", o.RequestDetail.Detail.Name, o.RequestDetail.Group.Name,
                                    o.RequestDetail.Drawing.Name)));
            }
            return shipments;
        }

        protected override ShipmentViewModel DoCreateNewEntity()
        {
            var shipment = new ShipmentViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
                SortOrder = RepositoryFactory.GetShipmentRepository().GetNextSortOrder()
            };
            shipment.DeliveryDocNumber = shipment.SortOrder;
            shipment.DeliveryDocDate = shipment.Date;
            return shipment;
        }

        protected override void DoDeleteEntity(ShipmentViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(ShipmentViewModel entity, string searchText)
        {
            return false;
        }
    }
}
