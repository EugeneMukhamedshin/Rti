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
    public class MaterialArrivalRecordList : EntityList<MaterialArrivalRecordViewModel, MaterialArrivalRecord>, IClosable
    {
        public DelegateCommand AddRecordCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public MaterialViewModel Material { get; set; }

        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }

        public MaterialArrivalRecordList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(MaterialArrivalRecordViewModel), typeof(MaterialArrivalRecordEdit)));

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
            MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().Select(m => new MaterialViewModel(m, RepositoryFactory)).ToList());
        }

        private void AddRecord()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая запись журнала", false) && StartDate <= record.WaybillDate && record.WaybillDate <= EndDate && (Material == null || record.Material.Id == Material.Id))
                Items.Add(record);
        }

        protected override IEnumerable<MaterialArrivalRecordViewModel> GetItems()
        {
            var items = RepositoryFactory.GetMaterialArrivalRecordRepository().GetByInterval(StartDate, EndDate, Material == null ? (int?)null : Material.Id);
            return items.Select(o => new MaterialArrivalRecordViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override MaterialArrivalRecordViewModel DoCreateNewEntity()
        {
            return new MaterialArrivalRecordViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetMaterialArrivalRecordRepository().GetNextSortOrder(),
                WaybillDate = DateTime.Today,
                Material = Material
            };
        }

        protected override void DoDeleteEntity(MaterialArrivalRecordViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(MaterialArrivalRecordViewModel entity, string searchText)
        {
            return false;
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
    public class RollingRecordList : EntityList<RollingRecordViewModel, RollingRecord>, IClosable
    {
        public DelegateCommand AddRecordCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public ContragentViewModel Customer { get; set; }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public RollingRecordList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(RollingRecordViewModel), typeof(RollingRecordEdit)));

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
            if (OpenViewModelEditWindow(record, "Новая запись журнала", false) && StartDate <= record.RollingDate && record.RollingDate <= EndDate && (Customer == null || record.Customer.Id == Customer.Id))
                Items.Add(record);
        }

        protected override IEnumerable<RollingRecordViewModel> GetItems()
        {
            var items = RepositoryFactory.GetRollingRecordRepository().GetByInterval(StartDate, EndDate, Customer == null ? (int?)null : Customer.Id);
            return items.Select(o => new RollingRecordViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override RollingRecordViewModel DoCreateNewEntity()
        {
            return new RollingRecordViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetRollingRecordRepository().GetNextSortOrder(),
                RollingDate = DateTime.Today,
                Customer = Customer
            };
        }

        protected override void DoDeleteEntity(RollingRecordViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(RollingRecordViewModel entity, string searchText)
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