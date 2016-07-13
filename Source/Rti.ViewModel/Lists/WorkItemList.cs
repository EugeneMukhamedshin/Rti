using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Runtime.Remoting.Channels;
using Rti.Model.Domain;
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
        private List<EmployeeViewModel> _employeesSource;
        private EmployeeViewModel _employee;

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

        public DelegateCommand AddWorkItemCommand { get; set; }

        public DelegateCommand OpenEmployeeWorkItemListCommand { get; set; }
        public DelegateCommand OpenMakedDetailsReportCommand { get; set; }

        public DelegateCommand CloseCommand { get; set; }

        public DelegateCommand ReportCommand { get; set; }

        public EmployeeViewModel Employee
        {
            get { return _employee; }
            set
            {
                if (Equals(value, _employee)) return;
                _employee = value;
                OnPropertyChanged();
                OpenEmployeeWorkItemListCommand.RequeryCanExecute();
            }
        }

        public List<EmployeeViewModel> EmployeesSource
        {
            get { return _employeesSource; }
            set
            {
                if (Equals(value, _employeesSource)) return;
                _employeesSource = value;
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
            OpenEmployeeWorkItemListCommand = new DelegateCommand(
                "Открыть индивидуальный наряд",
                o => Employee != null,
                o => OpenEmployeeWorkItemList());
            OpenMakedDetailsReportCommand = new DelegateCommand(o => OpenMakedDetailsReport());
            CloseCommand = new DelegateCommand(
                "",
                o => true,
                o => Close(true));
            ReportCommand = new DelegateCommand(o => Report());
        }

        private void OpenMakedDetailsReport()
        {
            var viewModel = new MakedDetailsReportViewModel("Реестр изготовленных деталей", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Реестр изготовленных деталей.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" };
            ViewService.ShowViewDialog(viewModel);
        }

        private void Report()
        {
            var viewModel = new WorkItemListReportViewModel("Дневной наряд", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("Дневной наряд ({0:dd.MM.yyyy}).xls", Date))
            {
                WorkItems = Items.ToList(),
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls",
                Date = Date
            };
            viewModel.GenerateReport();
        }

        private void AddWorkItem()
        {
            var workItem = DoCreateNewEntity();
            if (OpenViewModelEditWindow(workItem, "Новая запись дневного наряда", false))
                Items.Add(workItem);
        }

        private void OpenEmployeeWorkItemList()
        {
            var list = new EmployeeWorkItemList(Employee, Date, EditMode, ViewService, RepositoryFactory);
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
            RefreshEmployeesSource();
            Items.CollectionChanged += (sender, args) => RefreshEmployeesSource();
            Items.CollectionChanged += (sender, args) => ResubscribeItems();
            Employee = Items.Select(o => o.Employee).Distinct().FirstOrDefault();
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
            if (e.PropertyName == "Sum")
                OnPropertyChanged("Sum");
        }

        private void RefreshEmployeesSource()
        {
            EmployeesSource = Items.Select(o => o.Employee).Distinct().OrderBy(o => o.FullName).ToList();
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}
