using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class WorkItemEdit : EditEntityViewModel<WorkItemViewModel, WorkItem>
    {
        public Lazy<List<EmployeeViewModel>> EmployeesSource { get; set; }
        public Lazy<List<DrawingViewModel>> DrawingsSource { get; set; }

        public WorkItemEdit(string name, WorkItemViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public override void Refresh()
        {
            base.Refresh();
            EmployeesSource = new Lazy<List<EmployeeViewModel>>(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().Select(m => new EmployeeViewModel(m, RepositoryFactory)).ToList());
            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllInWork().Select(m => new DrawingViewModel(m, RepositoryFactory)).ToList());
        }

        protected override void DoSave()
        {
            if (!Entity.IsChanged)
                return;
            var controller = new WorkItemControllerViewModel(ViewService, RepositoryFactory);
            if (!controller.ValidatePost(Entity))
                return;
            base.DoSave();

            controller.PostWorkItem(Source);
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
