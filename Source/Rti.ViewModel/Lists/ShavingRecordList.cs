using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Lists
{
    public class ShavingRecordList : EntityList<ShavingRecordViewModel, ShavingRecord>, IClosable
    {
        private List<ShavingSalaryItem> _salaryItems;
        public DelegateCommand AddRecordCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DelegateCommand OpenRejectionReportCommand { get; set; }
        public DelegateCommand ReportCommand { get; set; }

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
            ReportCommand = new DelegateCommand(o => Report());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void Report()
        {
            var viewModel = new ShavingRecordReportViewModel("Журнал обрезки облоя", Items, ViewService,
                RepositoryFactory, Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"),
                "Журнал обрезки облоя.xls")
            {
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls",
                StartDate = StartDate,
                EndDate = EndDate
            };
            viewModel.GenerateReport();}

        private void OpenRejectionReport()
        {
            var rejectionReportGenerator = new RejectionReportGenerator();
            rejectionReportGenerator.BuildReport(StartDate, EndDate, Shaver == null ? (int?)null : Shaver.Id, ViewService, RepositoryFactory);
        }

        public override void Refresh()
        {
            base.Refresh();
            EmployeesSource =
                new Lazy<List<EmployeeViewModel>>(
                    () =>
                        new List<EmployeeViewModel> {null}.Union(
                            RepositoryFactory.GetEmployeeRepository()
                                .GetAllActive()
                                .Select(m => new EmployeeViewModel(m, RepositoryFactory))).ToList());
        }

        private void AddRecord()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая запись журнала", false) && StartDate <= record.ShaveDate && record.ShaveDate <= EndDate && (Shaver == null || record.ShaverEmployee.Id == Shaver.Id))
                Items.Add(record);
        }

        protected override IEnumerable<ShavingRecordViewModel> GetItems()
        {
            var items = RepositoryFactory.GetShavingRecordRepository().GetByInterval(StartDate, EndDate, Shaver == null ? (int?)null : Shaver.Id).OrderBy(o => o.ShaveDate).ThenBy(o => o.SortOrder);
            return items.Select(o => new ShavingRecordViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            Items.CollectionChanged += Items_CollectionChanged;
            RefreshSummary();}

        private void Items_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            RefreshSummary();
        }

        private void RefreshSummary()
        {
            SalaryItems =
                Items.GroupBy(o => o.ShaverEmployee)
                    .Select(g => new ShavingSalaryItem { Employee = g.Key, Salary = g.Sum(o => o.Salary) })
                    .ToList();
        }

        public List<ShavingSalaryItem> SalaryItems
        {
            get { return _salaryItems; }
            set
            {
                if (Equals(value, _salaryItems)) return;
                _salaryItems = value;
                OnPropertyChanged();
            }
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

    public class ShavingSalaryItem
    {
        public EmployeeViewModel Employee { get; set; }
        public decimal? Salary { get; set; }
    }
}
