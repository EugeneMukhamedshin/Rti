using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class ShippingOrderRecordList : EntityList<ShippingOrderRecordViewModel, ShippingOrderRecord>, IClosable
    {
        public DelegateCommand AddRecordCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public ContragentViewModel Customer { get; set; }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public ShippingOrderRecordList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(ShippingOrderRecordViewModel), typeof(ShippingOrderRecordEdit)));

            AddRecordCommand = new DelegateCommand(
                "Добавить запись в журнал",
                o => true,
                o => AddRecord());
            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        public override void Refresh()
        {
            base.Refresh();
            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
        }

        private void AddRecord()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая запись журнала", false) && StartDate <= record.OrderDate && record.OrderDate <= EndDate && (Customer == null || record.Customer.Id == Customer.Id))
                Items.Add(record);
        }

        protected override IEnumerable<ShippingOrderRecordViewModel> GetItems()
        {
            var items = RepositoryFactory.GetShippingOrderRecordRepository().GetByInterval(StartDate, EndDate, Customer == null ? (int?)null : Customer.Id);
            return items.Select(o => new ShippingOrderRecordViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override ShippingOrderRecordViewModel DoCreateNewEntity()
        {
            return new ShippingOrderRecordViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetShippingOrderRecordRepository().GetNextSortOrder(),
                OrderDate = DateTime.Today,
                Customer = Customer
            };
        }

        protected override void DoDeleteEntity(ShippingOrderRecordViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(ShippingOrderRecordViewModel entity, string searchText)
        {
            return false;
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}