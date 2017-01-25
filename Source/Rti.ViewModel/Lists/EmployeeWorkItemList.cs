using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Domain.BusinessLogic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Lists
{
    public class EmployeeWorkItemList : EntityList<WorkItemViewModel, WorkItem>, IClosable
    {
        private WorkItemEmployeePackageViewModel _workItemEmployeePackage;

        public WorkItemEmployeePackageViewModel WorkItemEmployeePackage
        {
            get { return _workItemEmployeePackage; }
            set
            {
                if (Equals(value, _workItemEmployeePackage)) return;
                _workItemEmployeePackage = value;
                OnPropertyChanged();
            }
        }

        public EmployeeViewModel Employee { get; set; }
        public DateTime Date { get; set; }

        public DelegateCommand OkCommand { get; set; }
        public DelegateCommand CloseCommand { get; set; }
        public DelegateCommand ReportCommand { get; set; }

        private Dictionary<int, List<DrawingFlowsheetMachineViewModel>> _drawingMachines;

        private List<DrawingFlowsheetMachineViewModel> _machinesSource;

        public List<DrawingFlowsheetMachineViewModel> MachinesSource
        {
            get { return _machinesSource; }
            set
            {
                if (Equals(value, _machinesSource)) return;
                _machinesSource = value;
                OnPropertyChanged();
            }
        }

        public ObservableCollection<WorkItemEmployeePackageMachineViewModel> PackageMachines { get; set; }

        public EmployeeWorkItemList(EmployeeViewModel employee, DateTime date, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            Employee = employee;
            Date = date;
            PackageMachines = new ObservableCollection<WorkItemEmployeePackageMachineViewModel>();

            OkCommand = new DelegateCommand(
                "",
                o => true,
                o => SaveAndClose());
            CloseCommand = new DelegateCommand(
                "",
                o => true,
                o => Close(null));
            ReportCommand = new DelegateCommand(o => Report());
        }

        private void Report()
        {
            var viewModel = new EmployeeWorkItemListReportViewModel("Индивидуальный наряд", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("Индивидуальный наряд {0} ({1:dd.MM.yyyy}).xls", Employee.FullName, Date))
            {
                Employee = Employee,
                WorkItemEmployeePackage = WorkItemEmployeePackage,
                WorkItems = Items.ToList(),
                Date = Date,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void SaveAndClose()
        {
            WorkItemEmployeePackage.SaveEntity();

            var changed = false;
            foreach (var workItem in Items)
            {
                if (!workItem.IsChanged)
                    continue;
                changed = true;
                workItem.SaveEntity();
            }
            if (changed)
            {
                DoAsync(PostWorkItems, () => Close(null),
                    "Подождите, производится перераспределение выполненных деталей по заявкам...");

            }

            foreach (var machine in PackageMachines)
            {
                machine.SaveEntity();
            }

            if (!changed)
                Close(null);
        }

        private void PostWorkItems()
        {
            var controller = new WorkItemController(RepositoryFactory);
            foreach (var workItem in Items.OrderBy(o => o.WorkDate).ThenBy(o => o.SortOrder))
            {
                controller.PostWorkItem(workItem.Entity);
            }
        }

        public override void Refresh()
        {
            base.Refresh();
            var package = RepositoryFactory.GetWorkItemEmployeePackageRepository().GetByEmployeeId(Employee.Id, Date);
            WorkItemEmployeePackage = new WorkItemEmployeePackageViewModel(package, RepositoryFactory);
            if (WorkItemEmployeePackage.IsNewEntity)
            {
                WorkItemEmployeePackage.Employee = Employee;
                WorkItemEmployeePackage.Date = Date;
            }
            else
            {
                DoAsync(() => RepositoryFactory.GetWorkItemEmployeePackageMachineRepository().GetByWorkItemEmployeePackageId(WorkItemEmployeePackage.Id),
                    res => PackageMachines.ClearAndAddRange(res.Select(o => new WorkItemEmployeePackageMachineViewModel(o, RepositoryFactory))));
            }
        }

        protected override IEnumerable<WorkItemViewModel> GetItems()
        {
            return
                RepositoryFactory.GetWorkItemRepository()
                    .GetByEmployeeId(Employee.Id, Date)
                    .Select(o => new WorkItemViewModel(o, RepositoryFactory));
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();

            foreach (var item in Items)
            {
                item.PropertyChanged += ItemPropertyChanged;
            }

            _drawingMachines = RepositoryFactory.GetDrawingFlowsheetMachineRepository()
                .GetByDrawingIds(Items.Select(o => o.Drawing.Id).ToArray())
                .ToLookup(o => o.Drawing.Id, o => new DrawingFlowsheetMachineViewModel(o, RepositoryFactory))
                .ToDictionary(o => o.Key, o => o.ToList());

            RefreshMachinesSource();
        }

        private void ItemPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            var workItem = (WorkItemViewModel)sender;
            if (workItem.IsMapping)
                return;
            if (e.PropertyName.In("FlowsheetMachine", "IsParallel", "MachineUsageTime"))
            {
                if (workItem.FlowsheetMachine != null)
                {
                    var workItemMachine = workItem.FlowsheetMachine.Machine;
                    var packageMachine =
                        PackageMachines.FirstOrDefault(
                            o =>
                                o.Machine != null && o.Machine.Equals(workItemMachine));
                    if (packageMachine == null)
                    {
                        packageMachine = new WorkItemEmployeePackageMachineViewModel(null, RepositoryFactory)
                        {
                            WorkItemEmployeePackage = WorkItemEmployeePackage,
                            Machine = workItemMachine
                        };
                        PackageMachines.Add(packageMachine);
                    }
                    if (workItemMachine != null)
                    {
                        var machineWorkItems = Items.Where(o => o.FlowsheetMachine != null && workItemMachine.Equals(o.FlowsheetMachine.Machine)).ToList();
                        var simultaneousItems = machineWorkItems.Where(o => o.IsParallel).ToList();
                        var simultaneousItemsWorkTime = simultaneousItems.Any() ? simultaneousItems.Max(o => o.MachineUsageTime) : 0;
                        var sequentialItemsWorkTime = machineWorkItems.Where(o => !o.IsParallel).Sum(o => o.MachineUsageTime);
                        packageMachine.PackageWorkingTime = decimal.ToInt32(Math.Max(simultaneousItemsWorkTime, sequentialItemsWorkTime));
                    }
                }
            }
        }

        protected override void OnSelectedItemChanged()
        {
            base.OnSelectedItemChanged();
            RefreshMachinesSource();
        }

        public void RefreshMachinesSource()
        {
            if (SelectedItem != null && SelectedItem.Drawing != null && _drawingMachines.ContainsKey(SelectedItem.Drawing.Id))
                MachinesSource = _drawingMachines[SelectedItem.Drawing.Id];
            else
                MachinesSource = null;
        }

        protected override WorkItemViewModel DoCreateNewEntity()
        {
            throw new InvalidOperationException("В индивидуальном наряде нельзя добавлять строки");
        }

        protected override void DoDeleteEntity(WorkItemViewModel entity)
        {
            throw new InvalidOperationException("В индивидуальном наряде нельзя удалять строки");
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

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}