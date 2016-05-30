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
        public DelegateCommand AddShipmentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public ShipmentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
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
            return
                RepositoryFactory.GetShipmentRepository()
                    .GetByPeriod(StartDate, EndDate)
                    .Select(o => new ShipmentViewModel(o, RepositoryFactory))
                    .OrderBy(o => o.SortOrder)
                    .ToList();
        }

        protected override ShipmentViewModel DoCreateNewEntity()
        {
            return new ShipmentViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
                SortOrder = RepositoryFactory.GetShipmentRepository().GetNextSortOrder()
            };
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
