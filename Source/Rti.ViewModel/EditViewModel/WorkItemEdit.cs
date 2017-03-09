using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Domain.BusinessLogic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class WorkItemEdit : EditEntityViewModel<WorkItemViewModel, WorkItem>
    {
        private List<DrawingViewModel> _drawingsSource;
        public Lazy<List<EmployeeViewModel>> EmployeesSource { get; set; }

        public List<DrawingViewModel> DrawingsSource
        {
            get { return _drawingsSource; }
            set
            {
                _drawingsSource = value; 
                OnPropertyChanged();
            }
        }

        public WorkItemEdit(string name, WorkItemViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            Entity.PropertyChanged += EntityOnPropertyChanged;
        }

        private void EntityOnPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if (e.PropertyName == nameof(Entity.IsWithoutRequest))
                Refresh();
        }

        public override void Refresh()
        {
            base.Refresh();
            EmployeesSource = new Lazy<List<EmployeeViewModel>>(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().Select(m => new EmployeeViewModel(m, RepositoryFactory)).ToList());
            DoAsync(
                () => Entity.IsWithoutRequest
                    ? RepositoryFactory.GetDrawingRepository()
                        .GetAllActive()
                        .Select(o => new DrawingViewModel(o, RepositoryFactory))
                        .ToList()
                    : RepositoryFactory.GetDrawingRepository()
                        .GetAllInWork(Entity.WorkDate, Entity.SortOrder)
                        .Select(
                            m =>
                                new DrawingViewModel(m.Item1, RepositoryFactory)
                                {
                                    DoneCount = m.Item2,
                                    UndoneCount = m.Item3
                                })
                        .ToList(),
                res => DrawingsSource = res);

        }

        protected override void DoSave()
        {
            if (!Entity.IsChanged)
                return;
            var controller = new WorkItemController(RepositoryFactory);
            base.DoSave();

            var package = new WorkItemEmployeePackageViewModel(
                RepositoryFactory.GetWorkItemEmployeePackageRepository()
                    .GetByEmployeeIds(new[] {Entity.Employee.Id}, Entity.WorkDate).FirstOrDefault(), RepositoryFactory);

            if (package.IsNewEntity)
            {
                package.Employee = Entity.Employee;
                package.Date = Entity.WorkDate;
                package.SaveEntity();
            }

            controller.PostWorkItem(Source.Entity);
        }

        protected override bool DoValidate()
        {
            if (Entity.Drawing == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан чертеж"));
                return false;
            }
            if (Entity.Employee == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан исполнитель"));
                return false;
            }
            if (Entity.TaskCount == null || Entity.TaskCount == 0)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Дневное задание не может быть пустым или нулевым"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
