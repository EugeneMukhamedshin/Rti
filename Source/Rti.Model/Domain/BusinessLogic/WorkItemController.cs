using System;
using System.Linq;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Domain.BusinessLogic
{
    public class WorkItemController
    {
        public IRepositoryFactory RepositoryFactory { get; set; }

        public WorkItemController(IRepositoryFactory repositoryFactory)
        {
            RepositoryFactory = repositoryFactory;
        }

        public void PostWorkItem(WorkItem workItem)
        {
            // Удаляем предыдущие записи распределения
            RepositoryFactory.GetWorkItemRequestDetailRepository().DeleteByWorkItemId(workItem.Id);

            // Получаем актуальные остатки по заявкам на текущую дату
            var requestDetailDoneCounts =
               RepositoryFactory.GetRequestDetailRepository()
                   .GetRequestsInProductionWithActualDoneCounts(workItem.Drawing.Id, workItem.WorkDate);

            // Пересчитываем количество деталей по заявкам на текущую дату
            workItem.RequestCount = requestDetailDoneCounts.Sum(o => o.Item2 - o.Item3);
            RepositoryFactory.GetWorkItemRepository().Update(workItem);

            // Получаем строки заявок для распределения фактически выполненной работы
            var requestDetails = RepositoryFactory.GetRequestDetailRepository().GetRequestDetailsByIds(requestDetailDoneCounts.Select(o => o.Item1).ToArray());
            var index = 0;
            var dayDoneCount = (workItem.DoneCount ?? 0) - (workItem.RejectedCount ?? 0);
            foreach (var requestDetail in requestDetails.OrderBy(o => o.Request.RegDate).ThenBy(o => o.SortOrder))
            {
                if (dayDoneCount == 0)
                    break;
                var detail = new WorkItemRequestDetail
                {
                    WorkItem = workItem,
                    RequestDetail = requestDetail,
                    SortOrder = index++,
                };
                // Получаем выполненное количество по заявке на текущий момент
                var currentlyDoneCount = decimal.ToInt32(requestDetailDoneCounts.Single(o => o.Item1 == detail.RequestDetail.Id).Item3);
                // Вычисляем оставшееся количество по заявке
                var requestedCount = detail.RequestDetail.Count - currentlyDoneCount;
                var doneCount = Math.Min(dayDoneCount, requestedCount);
                detail.DoneCount = doneCount;
                RepositoryFactory.GetWorkItemRequestDetailRepository().Insert(detail);
                dayDoneCount -= doneCount;

                if (detail.RequestDetail.Count == currentlyDoneCount + doneCount)
                    detail.RequestDetail.RequestDetailStateEnum = RequestDetailState.Done;
                else
                    detail.RequestDetail.RequestDetailStateEnum = RequestDetailState.InProduction;
                RepositoryFactory.GetRequestDetailRepository().Update(detail.RequestDetail);
            }

            var nextWorkItem = RepositoryFactory.GetWorkItemRepository().GetByDrawingId(workItem.Drawing.Id, workItem.WorkDate.AddDays(1)).OrderBy(o => o.WorkDate).FirstOrDefault();
            if (nextWorkItem != null)
            {
                PostWorkItem(nextWorkItem);
            }
        }
    }
}
