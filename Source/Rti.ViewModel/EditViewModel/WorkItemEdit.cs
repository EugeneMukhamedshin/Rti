using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
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
            var workItems = RepositoryFactory.GetWorkItemRepository().GetByDrawingId(workItem.Drawing.Id, workItem.WorkDate.AddDays(1));
            if (workItems.Any())
            {
                if (
                    !ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                        "Будет произведено перераспределение выполненного количества деталей по заявкам. Подтвердите изменение.")))
                    return false;
            }
            return true;
        }

        public void PostWorkItem(WorkItemViewModel workItem)
        {
            if (workItem.IsNewEntity)
                workItem.SaveEntity();
            _workItemController.PostWorkItem(workItem.Entity);
        }
    }

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
            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllActive().Select(m => new DrawingViewModel(m, RepositoryFactory)).ToList());
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
            return;

            //if (!Source.IsNewEntity)
            //{
            //    RepositoryFactory.GetWorkItemRequestDetailRepository()
            //        .DeleteByWorkItemId(Source.Id);
            //}
            //Entity.RequestCount = RepositoryFactory.GetRequestDetailRepository().GetNotShippedCount(Entity.Drawing.Id, Entity.WorkDate);
            //base.DoSave();

            //var requestDetailDoneCounts =
            //   RepositoryFactory.GetRequestDetailRepository()
            //       .GetRequestsInProductionWithActualDoneCounts(Source.Drawing.Id, Source.WorkDate);

            //var requestDetails = RepositoryFactory.GetRequestDetailRepository().GetRequestDetailsByIds(requestDetailDoneCounts.Select(o => o.Item1).ToArray());
            //var index = 0;
            //var dayDoneCount = Source.DoneCount ?? 0;
            //var dayRejectedCount = Source.RejectedCount ?? 0;
            //foreach (var requestDetail in requestDetails.OrderBy(o => o.Request.RegDate).ThenBy(o => o.SortOrder))
            //{
            //    if (dayDoneCount == 0)
            //        break;
            //    var detail = new WorkItemRequestDetailViewModel(null, RepositoryFactory)
            //    {
            //        WorkItem = Source,
            //        RequestDetail = new RequestDetailViewModel(requestDetail, RepositoryFactory),
            //        SortOrder = index++,
            //    };
            //    // Получаем выполненное количество на текущий момент
            //    var currentlyDoneCount = decimal.ToInt32(requestDetailDoneCounts.Single(o => o.Item1 == detail.RequestDetail.Id).Item2);
            //    // Вычисляем оставшееся количество по заявке
            //    var requestedCount = detail.RequestDetail.Count - currentlyDoneCount;
            //    var doneCount = Math.Min(dayDoneCount, requestedCount);
            //    var rejectedCount = Math.Min(dayRejectedCount, doneCount);
            //    detail.DoneCount = doneCount;
            //    detail.RejectedCount = rejectedCount;
            //    detail.SaveEntity();
            //    dayDoneCount -= doneCount;
            //    dayRejectedCount -= rejectedCount;

            //    if (detail.RequestDetail.Count == currentlyDoneCount + doneCount)
            //        detail.RequestDetail.RequestDetailStateEnum = RequestDetailState.Done;
            //    else
            //        detail.RequestDetail.RequestDetailStateEnum = RequestDetailState.InProduction;
            //    detail.RequestDetail.SaveEntity();
            //}
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
