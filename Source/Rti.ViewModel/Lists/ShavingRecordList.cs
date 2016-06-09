using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting;

namespace Rti.ViewModel.Lists
{
    public class ShavingRecordList: EntityList<ShavingRecordViewModel, ShavingRecord>, IClosable
    {
        public DelegateCommand AddRecordCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DelegateCommand OpenRejectionReportCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public EmployeeViewModel Shaver { get; set; }

        public Lazy<List<EmployeeViewModel>> EmployeesSource { get; set; }

        public ShavingRecordList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(ShavingRecordViewModel), typeof(ShavingRecordEdit)));

            AddRecordCommand = new DelegateCommand(
               "Добавить запись в журнал",
               o => true,
               o => AddRecord());
            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            OpenRejectionReportCommand = new DelegateCommand(
                "Реестр брака",
                o => true,
                o => OpenRejectionReport());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void OpenRejectionReport()
        {
            var rejectionReportGenerator = new RejectionReportGenerator();
            rejectionReportGenerator.BuildReport(StartDate, EndDate, Shaver == null ? (int?)null : Shaver.Id, ViewService, RepositoryFactory);
        }

        public override void Refresh()
        {
            base.Refresh();
            EmployeesSource = new Lazy<List<EmployeeViewModel>>(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().Select(m => new EmployeeViewModel(m, RepositoryFactory)).ToList());
        }

        private void AddRecord()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая запись журнала", false) && StartDate <= record.ShaveDate && record.ShaveDate <= EndDate && (Shaver == null || record.ShaverEmployee.Id == Shaver.Id))
                Items.Add(record);
        }

        protected override IEnumerable<ShavingRecordViewModel> GetItems()
        {
            var items = RepositoryFactory.GetShavingRecordRepository().GetByInterval(StartDate, EndDate, Shaver == null ? (int?) null : Shaver.Id);
            return items.Select(o => new ShavingRecordViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override ShavingRecordViewModel DoCreateNewEntity()
        {
            return new ShavingRecordViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetShavingRecordRepository().GetNextSortOrder(),
                ShaveDate = DateTime.Today,
                ShaverEmployee = Shaver
            };
        }

        protected override void DoDeleteEntity(ShavingRecordViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(ShavingRecordViewModel entity, string searchText)
        {
            return entity.ShaverEmployee != null && searchText.ContainedIn(entity.ShaverEmployee.FullName);
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}
