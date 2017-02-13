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
        public ContragentViewModel Supplier { get; set; }

        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }

        public Lazy<List<ContragentViewModel>> SuppliersSource { get; set; }

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
            MaterialsSource =
                new Lazy<List<MaterialViewModel>>(
                    () =>
                        new List<MaterialViewModel> { null }.Union(
                            RepositoryFactory.GetMaterialRepository()
                                .GetAllActive()
                                .Select(m => new MaterialViewModel(m, RepositoryFactory))).ToList());
            SuppliersSource =
                new Lazy<List<ContragentViewModel>>(
                    () =>
                        new List<ContragentViewModel> { null }.Union(
                            RepositoryFactory.GetContragentRepository()
                                .GetAllActive(ContragentType.Supplier)
                                .Select(o => new ContragentViewModel(o, RepositoryFactory))).ToList());
        }

        private void AddRecord()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая запись журнала", false) && StartDate <= record.WaybillDate && record.WaybillDate <= EndDate && (Material == null || record.Material.Id == Material.Id))
                Items.Add(record);
        }

        protected override IEnumerable<MaterialArrivalRecordViewModel> GetItems()
        {
            var items = RepositoryFactory.GetMaterialArrivalRecordRepository().GetByInterval(StartDate, EndDate, Supplier?.Id, Material?.Id);
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
}