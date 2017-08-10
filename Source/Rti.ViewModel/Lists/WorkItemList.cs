﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Domain.BusinessLogic;
using Rti.Model.Domain.ReportEntities;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Lists
{
    public class WorkItemList : EntityList<WorkItemViewModel, WorkItem>, IClosable
    {
        private DateTime _date;
        private List<WorkItemEmployeePackageViewModel> _workItemEmployeePackages;
        private WorkItemEmployeePackageViewModel _workItemEmployeePackage;

        public List<RequestsReportRow> RequestsSource
        {
            get { return _requestsSource; }
            set
            {
                _requestsSource = value; 
                OnPropertyChanged();
            }
        }

        public RequestsReportRow SelectedRequest { get; set; }

        public DateTime Date
        {
            get { return _date; }
            set
            {
                if (value.Equals(_date)) return;
                _date = value;
                OnPropertyChanged();
                Refresh();
            }
        }
        private List<DrawingViewModel> _drawingsSource;
        private List<RequestsReportRow> _requestsSource;
        private List<EmployeeViewModel> _employeesSource;

        public List<EmployeeViewModel> EmployeesSource
        {
            get { return _employeesSource; }
            set
            {
                _employeesSource = value; 
                OnPropertyChanged();
            }
        }

        public List<DrawingViewModel> DrawingsSource
        {
            get { return _drawingsSource; }
            set
            {
                _drawingsSource = value;
                OnPropertyChanged();
            }
        }


        public DelegateCommand AddWorkItemCommand { get; set; }
        public DelegateCommand AddRequestWorkItemsCommand { get; set; }
        public DelegateCommand OpenEmployeeWorkItemListCommand { get; set; }
        public DelegateCommand OpenMakedDetailsReportCommand { get; set; }
        public DelegateCommand PrevDayCommand { get; set; }
        public DelegateCommand NextDayCommand { get; set; }
        public DelegateCommand CloseCommand { get; set; }
        public DelegateCommand ReportCommand { get; set; }
        public DelegateCommand PrintAllEmployeeReportCommand { get; set; }
        public DelegateCommand UnfilledWorkItemsReportCommand { get; set; }
        public DelegateCommand SaveSelectedItemCommand { get; set; }

        public WorkItemEmployeePackageViewModel WorkItemEmployeePackage
        {
            get { return _workItemEmployeePackage; }
            set
            {
                if (Equals(value, _workItemEmployeePackage)) return;
                _workItemEmployeePackage = value;
                OnPropertyChanged();
                OpenEmployeeWorkItemListCommand.RequeryCanExecute();
            }
        }

        public List<WorkItemEmployeePackageViewModel> WorkItemEmployeePackages
        {
            get { return _workItemEmployeePackages; }
            set
            {
                if (Equals(value, _workItemEmployeePackages)) return;
                _workItemEmployeePackages = value;
                OnPropertyChanged();
            }
        }

        public decimal? Sum { get { return Items.Sum(item => item.Sum); } }

        public WorkItemList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(WorkItemViewModel), typeof(WorkItemEdit)));

            _date = DateTime.Today.AddDays(1);
            AddWorkItemCommand = new DelegateCommand(
                "Добавить строку",
                o => EditMode,
                o => AddWorkItem());
            AddRequestWorkItemsCommand = new DelegateCommand(
                "Добавить работу по заявке",
                o => EditMode,
                o => AddRequestWorkItems());
            OpenEmployeeWorkItemListCommand = new DelegateCommand(
                "Открыть индивидуальный наряд",
                o => WorkItemEmployeePackage != null,
                o => OpenEmployeeWorkItemList());
            OpenMakedDetailsReportCommand = new DelegateCommand(o => OpenMakedDetailsReport());
            CloseCommand = new DelegateCommand(
                "",
                o => true,
                o => Close(true));
            ReportCommand = new DelegateCommand(o => Report());
            PrintAllEmployeeReportCommand = new DelegateCommand(o => PrintAllEmployeeReport());

            PrevDayCommand = new DelegateCommand(o => Date = Date.AddDays(-1));
            NextDayCommand = new DelegateCommand(o => Date = Date.AddDays(1));

            UnfilledWorkItemsReportCommand = new DelegateCommand(o => UnfilledWorkItemsReport());

            SaveSelectedItemCommand = new DelegateCommand(o => SaveSelectedItem());
        }

        public override void Refresh()
        {
            base.Refresh();

            DoAsync(() => RepositoryFactory.GetRequestRepository()
                            .GetRequestReport(DateTime.MinValue, DateTime.MaxValue, null, null)
                            .OrderByDescending(o => o.RegDate)
                            .ToList(),
                            res => RequestsSource = res);
            DoAsync(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().Select(m => new EmployeeViewModel(m, RepositoryFactory)).ToList(),
                res => EmployeesSource = res);
            DoAsync(
                () => RepositoryFactory.GetDrawingRepository()
                        .GetAllActive()
                        .Select(o => new DrawingViewModel(o, RepositoryFactory))
                        .ToList(),
                res => DrawingsSource = res);

        }

        private void UnfilledWorkItemsReport()
        {
            var viewModel = new UnfilledWorkItemsReportViewModel("Незаполненные наряды", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Незаполненные наряды.xls")
            {
                StartDate = new DateTime(DateTime.Today.Year, 1, 1),
                EndDate = DateTime.Today.AddDays(1),
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void PrintAllEmployeeReport()
        {
            var viewModel = new EmployeeWorkItemListReportViewModel("Индивидуальный наряд", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("Индивидуальные наряды ({0:dd.MM.yyyy}).xls", Date))
            {
                WorkItemEmployeePackages = WorkItemEmployeePackages.Select(
                    wip => new EmployeeWorkItemListReportViewModel.ReportWorkItemPackageViewModel
                    {
                        WorkItemEmployeePackage = wip,
                        WorkItems = Items.Where(wi => wi.Employee.Id == wip.Employee.Id).ToList()
                    }).ToList(),
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void OpenMakedDetailsReport()
        {
            var viewModel = new MakedDetailsReportViewModel("Реестр изготовленных деталей", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Реестр изготовленных деталей.xls")
            { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" };
            ViewService.ShowViewDialog(viewModel);
        }

        private void Report()
        {
            var workItemPackage = new WorkItemPackageViewModel(RepositoryFactory.GetWorkItemPackageRepository().GetByDate(Date), RepositoryFactory) { };
            if (workItemPackage.IsNewEntity)
            {
                workItemPackage.Date = Date;
                workItemPackage.SaveEntity();
            }
            var viewModel = new WorkItemListReportViewModel("Дневной наряд", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("Дневной наряд ({0:dd.MM.yyyy}).xls", Date))
            {
                WorkItems = Items.ToList(),
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls",
                WorkItemPackage = workItemPackage
            };
            viewModel.GenerateReport();
        }

        private void AddWorkItem()
        {
            var workItem = DoCreateNewEntity();
            if (OpenViewModelEditWindow(workItem, "Новая запись дневного наряда", false))
                Items.Add(workItem);
        }

        private void AddRequestWorkItems()
        {
            if (SelectedRequest == null)
                return;
            var details = RepositoryFactory.GetRequestDetailRepository().GetByRequestId(SelectedRequest.Id);
            foreach (var detail in details)
            {
                var workItem = new WorkItemViewModel(null, RepositoryFactory)
                {
                    Drawing = new DrawingViewModel(detail.Drawing, RepositoryFactory),
                    WorkDate = Date,
                    SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
                    Note = $"Заявка №{SelectedRequest.Number} от {SelectedRequest.RegDate:dd.MM.yyyy}г. строка {detail.SortOrder} ({detail.Count}шт.)"
                };
                workItem.SaveEntity();
                Items.Add(workItem);
            }
            SelectedRequest = null;
        }

        private void OpenEmployeeWorkItemList()
        {
            var list = new EmployeeWorkItemList(WorkItemEmployeePackage.Employee, Date, EditMode, ViewService, RepositoryFactory);
            list.Refresh();
            ViewService.ShowViewDialog(list);
            Refresh();
        }

        protected override IEnumerable<WorkItemViewModel> GetItems()
        {
            return RepositoryFactory.GetWorkItemRepository().GetByDate(Date).Select(o => new WorkItemViewModel(o, RepositoryFactory));
        }

        protected override WorkItemViewModel DoCreateNewEntity()
        {
            return new WorkItemViewModel(null, RepositoryFactory)
            {
                WorkDate = Date,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(WorkItemViewModel entity)
        {
            var details = RepositoryFactory.GetWorkItemRequestDetailRepository().GetByWorkItemId(entity.Id).Select(o => new WorkItemRequestDetailViewModel(o, RepositoryFactory)).ToList();
            details.ForEach(o => o.DeleteEntity());
            entity.DeleteEntity();
        }

        protected override bool AcceptFind(WorkItemViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.BatchNumber, entity.Note) ||
                   entity.Drawing != null &&
                   (searchText.ContainedIn(entity.Drawing.Name) ||
                    entity.Drawing.Entity != null && searchText.ContainedIn(entity.Drawing.Detail.Name) ||
                    entity.Drawing.Group != null && searchText.ContainedIn(entity.Drawing.Group.Name) ||
                    entity.Drawing.Material != null && searchText.ContainedIn(entity.Drawing.Material.Name)) ||
                    entity.Employee != null && searchText.ContainedIn(entity.Employee.FullName);
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            RefreshWorkItemPackagesSource();
            Items.CollectionChanged += (sender, args) => RefreshWorkItemPackagesSource();
            Items.CollectionChanged += (sender, args) => ResubscribeItems();
            WorkItemEmployeePackage = WorkItemEmployeePackages.FirstOrDefault();
        }

        private void ResubscribeItems()
        {
            foreach (var item in Items)
            {
                item.PropertyChanged -= ItemPropertyChanged;
                item.PropertyChanged += ItemPropertyChanged;
            }
        }

        private void ItemPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(WorkItemViewModel.Employee))
                RefreshWorkItemPackagesSource();
            if (e.PropertyName == nameof(WorkItemViewModel.Sum))
                OnPropertyChanged("Sum");
        }

        private void RefreshWorkItemPackagesSource()
        {
            var employees = Items.Where(o => o.Employee != null).Select(o => o.Employee).Distinct().ToList();
            var employeeIds = employees.Select(o => o.Id).Distinct().ToArray();
            var workItemEmployeePackages =
                RepositoryFactory.GetWorkItemEmployeePackageRepository()
                    .GetByEmployeeIds(employeeIds, Date)
                    .OrderBy(o => o.Employee.FullName)
                    .Select(o => new WorkItemEmployeePackageViewModel(o, RepositoryFactory))
                    .ToList();
            foreach (var employee in employees)
            {
                if (workItemEmployeePackages.All(o => o.Employee.Id != employee.Id))
                {
                    var package = new WorkItemEmployeePackageViewModel(null, RepositoryFactory)
                    {
                        Employee = employee,
                        Date = Date
                    };
                    package.SaveEntity();
                    workItemEmployeePackages.Add(package);
                }
            }
            WorkItemEmployeePackages = workItemEmployeePackages;
        }

        protected override void OnSelectedItemChanging()
        {
            base.OnSelectedItemChanging();
            SaveSelectedItem();
        }

        private void SaveSelectedItem()
        {
            if (SelectedItem != null && SelectedItem.IsChanged && !DeletedItems.Contains(SelectedItem))
            {
                SelectedItem.SaveEntity();
                new WorkItemController(RepositoryFactory).PostWorkItem(SelectedItem.Entity);
            }
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}
