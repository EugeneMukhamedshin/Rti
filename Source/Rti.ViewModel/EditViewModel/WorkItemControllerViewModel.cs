<<<<<<< HEAD
﻿using System.Linq;
=======
using System.Linq;
>>>>>>> origin/develop
using Rti.Model.Domain.BusinessLogic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class WorkItemControllerViewModel
    {
        private WorkItemController _workItemController;
        
        public IViewService ViewService { get; set; }
        public IRepositoryFactory RepositoryFactory { get; set; }

        public WorkItemControllerViewModel(IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            ViewService = viewService;
            RepositoryFactory = repositoryFactory;
            _workItemController = new WorkItemController(RepositoryFactory);
        }

        public bool ValidatePost(WorkItemViewModel workItem)
        {
            //var workItems = RepositoryFactory.GetWorkItemRepository().GetByDrawingId(workItem.Drawing.Id, workItem.WorkDate.AddDays(1));
            //if (workItems.Any())
            //{
            //    if (
<<<<<<< HEAD
            //        !ViewService.ShowConfirmation(new MessageViewModel("Внимание",
            //            "Будет произведено перераспределение выполненного количества деталей по заявкам. Подтвердите изменение.")))
=======
            //        !ViewService.ShowConfirmation(new MessageViewModel("��������",
            //            "����� ����������� ����������������� ������������ ���������� ������� �� �������. ����������� ���������.")))
>>>>>>> origin/develop
            //        return false;
            //}
            return true;}

        public void PostWorkItem(WorkItemViewModel workItem)
        {
            _workItemController.PostWorkItem(workItem.Entity);
        }
    }
}