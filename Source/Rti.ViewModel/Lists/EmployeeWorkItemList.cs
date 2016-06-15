using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class EmployeeWorkItemList : EntityList<WorkItemViewModel, WorkItem>, IClosable
    {
        private WorkItemPackageViewModel _employeeWorkItemPackage;

        public WorkItemPackageViewModel EmployeeWorkItemPackage
        {
            get { return _employeeWorkItemPackage; }
            set
            {
                if (Equals(value, _employeeWorkItemPackage)) return;
                _employeeWorkItemPackage = value;
                OnPropertyChanged();
            }
        }

        public EmployeeViewModel Employee { get; set; }
        public DateTime Date { get; set; }

        public DelegateCommand OkCommand { get; set; }
        public DelegateCommand CloseCommand { get; set; }

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

        public ObservableCollection<WorkItemPackageMachineViewModel> PackageMachines { get; set; }

        public EmployeeWorkItemList(EmployeeViewModel employee, DateTime date, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            Employee = employee;
            Date = date;
            PackageMachines = new ObservableCollection<WorkItemPackageMachineViewModel>();

            OkCommand = new DelegateCommand(
                "",
                o => true,
                o => SaveAndClose());
            CloseCommand = new DelegateCommand(
                "",
                o => true,
                o => Close(null));
        }

        private void SaveAndClose()
        {
            EmployeeWorkItemPackage.SaveEntity();

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
            var controller = new WorkItemControllerViewModel(ViewService, RepositoryFactory);
            foreach (var workItem in Items)
            {
                controller.PostWorkItem(workItem);
            }
        }

        public override void Refresh()
        {
            base.Refresh();
            var package = RepositoryFactory.GetWorkItemPackageRepository().GetByEmployeeId(Employee.Id, Date);
            EmployeeWorkItemPackage = new WorkItemPackageViewModel(package, RepositoryFactory);
            if (EmployeeWorkItemPackage.IsNewEntity)
            {
                EmployeeWorkItemPackage.Employee = Employee;
                EmployeeWorkItemPackage.Date = Date;
            }
            else
            {
                DoAsync(() => RepositoryFactory.GetWorkItemPackageMachineRepository().GetByWorkItemPackageId(EmployeeWorkItemPackage.Id),
                    res => PackageMachines.ClearAndAddRange(res.Select(o => new WorkItemPackageMachineViewModel(o, RepositoryFactory))));
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
                var packageMachine =
                    PackageMachines.FirstOrDefault(
                        o =>
                            workItem.FlowsheetMachine != null && workItem.FlowsheetMachine.Machine != null &&
                            o.FlowsheetMachine != null && o.FlowsheetMachine.Machine != null &&
                            workItem.FlowsheetMachine.Machine.Equals(o.FlowsheetMachine.Machine));
                if (packageMachine == null && workItem.FlowsheetMachine != null)
                {
                    packageMachine = new WorkItemPackageMachineViewModel(null, RepositoryFactory)
                    {
                        WorkItemPackage = EmployeeWorkItemPackage,
                        FlowsheetMachine = workItem.FlowsheetMachine
                    };
                    PackageMachines.Add(packageMachine);
                    packageMachine.PackageWorkingTime =
                        decimal.ToInt32(Items.Where(o => Equals(o.FlowsheetMachine, workItem.FlowsheetMachine))
                            .Sum(o => o.MachineUsageTime * (o.IsParallel ? 0 : 1)));
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