﻿using System;
using System.Collections.Generic;
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

        private Dictionary<int, List<FlowsheetMachine>> _drawingMachines;

        public EmployeeWorkItemList(EmployeeViewModel employee, DateTime date, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            Employee = employee;
            Date = date;

            OkCommand = new DelegateCommand(
                "",
                o => true,
                o => SaveAndClose());
            CloseCommand = new DelegateCommand(
                "",
                o => true,
                o => Close(false));
        }

        private void SaveAndClose()
        {
            EmployeeWorkItemPackage.SaveEntity();

            var controller = new WorkItemControllerViewModel(ViewService, RepositoryFactory);
            foreach (var workItem in Items)
            {
                if (!workItem.IsChanged)
                    continue;
                DoAsync(() => controller.PostWorkItem(workItem), () => Close(true), 
                    "Подождите, производится перераспределение выполненных деталей по заявкам...");
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
            };
        }

        protected override IEnumerable<WorkItemViewModel> GetItems()
        {
            return
                RepositoryFactory.GetWorkItemRepository()
                    .GetByEmployeeId(Employee.Id, Date)
                    .Select(o => new WorkItemViewModel(o, RepositoryFactory));
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