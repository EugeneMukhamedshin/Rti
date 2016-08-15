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

    public class ShipmentItemController
    {
        public IRepositoryFactory RepositoryFactory { get; set; }

        public ShipmentItemController(IRepositoryFactory repositoryFactory)
        {
            RepositoryFactory = repositoryFactory;
        }

        public void PostShipmentItem(ShipmentItem shipmentItem)
        {
            // Удаляем предыдущие записи распределения
            RepositoryFactory.GetShipmentItemWorkItemRepository().DeleteByShipmentItemId(shipmentItem.Id);

            // Получаем неотгруженное количество
            var notShippedWorkItems =
               RepositoryFactory.GetWorkItemRepository()
                   .GetNotShippedByDrawingId(shipmentItem.RequestDetail.Drawing.Id, shipmentItem.Shipment.Date, shipmentItem.Shipment.SortOrder);

            // Получаем строки дневных нарядов для распределения отгруженных деталей
            var workItems = RepositoryFactory.GetWorkItemRepository().GetWorkItemsByIds(notShippedWorkItems.Select(o => o.Item1).ToArray());
            var shippedCount = shipmentItem.Count;
            shipmentItem.BatchNumbers = string.Empty;
            foreach (var workItem in workItems.OrderBy(o => o.WorkDate).ThenBy(o => o.SortOrder))
            {
                if (shippedCount == 0)
                    break;
                var detail = new ShipmentItemWorkItem
                {
                    ShipmentItem = shipmentItem,
                    WorkItem = workItem
                };
                // Получаем отгруженное количество по строке дневного наряда
                var workItemNotShippedCount = decimal.ToInt32(notShippedWorkItems.Single(o => o.Item1 == detail.WorkItem.Id).Item2);
                var workItemShippedCount = Math.Min(shippedCount, workItemNotShippedCount);
                detail.Count = workItemShippedCount;
                RepositoryFactory.GetShipmentItemWorkItemRepository().Insert(detail);
                shippedCount -= workItemShippedCount;
                shipmentItem.BatchNumbers += string.Format("{0}{1}", shipmentItem.BatchNumbers == string.Empty ? string.Empty : ",", workItem.BatchNumber);
            }

            RepositoryFactory.GetShipmentItemRepository().Update(shipmentItem);

            var nextWorkItem = RepositoryFactory.GetShipmentItemRepository().GetFollowingItems(shipmentItem.RequestDetail.Drawing.Id, shipmentItem.Shipment.Date, shipmentItem.Shipment.SortOrder).OrderBy(o => o.Shipment.Date).ThenBy(o => o.Shipment.SortOrder).ThenBy(o => o.SortOrder).FirstOrDefault();
            if (nextWorkItem != null)
            {
                PostShipmentItem(nextWorkItem);
            }
        }
    }

}
