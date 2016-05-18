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
            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllActive().Select(m => new DrawingViewModel(m, RepositoryFactory)).ToList());
        }

        protected override void DoSave()
        {
            if (!Source.IsNewEntity)
            {
                RepositoryFactory.GetWorkItemRequestDetailRepository()
                    .DeleteByWorkItemId(Source.Id);
            }
            Entity.RequestCount = RepositoryFactory.GetRequestDetailRepository().GetNotShippedCount(Entity.Drawing.Id, Entity.WorkDate);
            base.DoSave();

            var requestDetailDoneCounts =
               RepositoryFactory.GetRequestDetailRepository()
                   .GetRequestsInProductionWithActualDoneCounts(Source.Drawing.Id, Source.WorkDate);

            var requestDetails = RepositoryFactory.GetRequestDetailRepository().GetRequestDetailsByIds(requestDetailDoneCounts.Select(o => o.Item1).ToArray());
            var index = 0;
            var dayDoneCount = Source.DoneCount ?? 0;
            foreach (var requestDetail in requestDetails.OrderBy(o => o.Request.RegDate).ThenBy(o => o.SortOrder))
            {
                if (dayDoneCount == 0)
                    break;
                var detail = new WorkItemRequestDetailViewModel(null, RepositoryFactory)
                {
                    WorkItem = Source,
                    RequestDetail = new RequestDetailViewModel(requestDetail, RepositoryFactory),
                    SortOrder = index++,
                };
                //var requestDetailWorkItems = RepositoryFactory.GetWorkItemRequestDetailRepository().GetByRequestDetailId(detail.RequestDetail.Id);
                // Получаем выполненное количество на текущий момент
                //var currentlyDoneCount = requestDetailWorkItems.Where(o => o.WorkItem.WorkDate < Source.WorkDate).Sum(o => o.DoneCount);
                var currentlyDoneCount = decimal.ToInt32(requestDetailDoneCounts.Single(o => o.Item1 == detail.RequestDetail.Id).Item2);
                // Вычисляем оставшееся количество по заявке
                var requestedCount = detail.RequestDetail.Count - currentlyDoneCount;
                var doneCount = Math.Min(dayDoneCount, requestedCount);
                detail.DoneCount = doneCount;
                detail.SaveEntity();
                dayDoneCount -= doneCount;

                if (detail.RequestDetail.Count == currentlyDoneCount + doneCount)
                    detail.RequestDetail.RequestDetailStateEnum = RequestDetailState.Done;
                else
                    detail.RequestDetail.RequestDetailStateEnum = RequestDetailState.InProduction;
                detail.RequestDetail.SaveEntity();
            }
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
