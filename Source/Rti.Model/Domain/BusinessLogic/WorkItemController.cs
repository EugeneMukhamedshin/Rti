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

        public void RepostWorkItemsByRequest(Request request)
        {
            var requestDetails = RepositoryFactory.GetRequestDetailRepository().GetByRequestId(request.Id);
            foreach (var requestDetail in requestDetails)
            {
                PostWorkItems(requestDetail.Drawing.Id, request.RegDate);
            }
        }

        public void PostWorkItems(int drawingId, DateTime fromDate, int sortOrder = 0)
        {
            var workItems = RepositoryFactory.GetWorkItemRepository().GetByDrawingId(drawingId, fromDate, DateTime.MaxValue)
                .OrderBy(o => o.WorkDate)
                .ThenBy(o => o.SortOrder)
                .Where(o => o.WorkDate >= fromDate && o.SortOrder >= sortOrder);

            foreach (var workItem in workItems)
            {
                PostWorkItem(workItem);
            }
        }

        public void PostWorkItem(WorkItem workItem)
        {
            if (workItem.Employee == null)
                return;

            // Создаем пакет при необходимости
            var package = RepositoryFactory.GetWorkItemEmployeePackageRepository()
                  .GetByEmployeeIds(new[] { workItem.Employee.Id }, workItem.WorkDate).FirstOrDefault();

            if (package == null)
            {
                package = new WorkItemEmployeePackage
                {
                    Employee = workItem.Employee,
                    Date = workItem.WorkDate
                };
                RepositoryFactory.GetWorkItemEmployeePackageRepository().Insert(package);
            }

            // Удаляем предыдущие записи распределения
            RepositoryFactory.GetWorkItemRequestDetailRepository().DeleteByWorkItemId(workItem.Id);

            // Получаем актуальные остатки по заявкам на текущую дату
            var requestDetailDoneCounts =
                RepositoryFactory.GetRequestDetailRepository()
                    .GetRequestsInProductionWithActualDoneCounts(workItem.Drawing.Id, workItem);

            // Получаем строки заявок для распределения фактически выполненной работы
            var requestDetails =
                RepositoryFactory.GetRequestDetailRepository()
                    .GetRequestDetailsByIds(requestDetailDoneCounts.Select(o => o.Item1).ToArray());
            var index = 0;
            var dayDoneCount = (workItem.DoneCount ?? 0) - (workItem.RejectedCount ?? 0);
            foreach (
                var requestDetail in
                    requestDetails.OrderBy(o => o.Request.RegDate).ThenBy(o => o.Request.Id).ThenBy(o => o.SortOrder))
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
                var currentlyDoneCount =
                    decimal.ToInt32(requestDetailDoneCounts.Single(o => o.Item1 == detail.RequestDetail.Id).Item3);
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
            // Пересчитываем количество деталей по заявкам на текущую дату
            workItem.RequestCount = requestDetailDoneCounts.Sum(o => o.Item2 - o.Item3);
            // Записываем перевыполнение
            workItem.OverflowCount = dayDoneCount;
            RepositoryFactory.GetWorkItemRepository().Update(workItem);
        }

        /// <summary>
        /// Распределяет строки детали по нарядам с OverFlowCount > 0 (перевыполнение)
        /// </summary>
        /// <param name="request"></param>
        public void DistributeRequestDetails(Request request)
        {
            var details = RepositoryFactory.GetRequestDetailRepository().GetByRequestId(request.Id);
            foreach (var detail in details)
            {
                RepositoryFactory.GetWorkItemRequestDetailRepository().DeleteByRequestDetailId(detail.Id, request.RegDate);

                var workItems = RepositoryFactory.GetWorkItemRepository()
                    .GetOverflowed(detail.Drawing.Id, request.RegDate.AddDays(-1));
                var notDistributedCount = detail.Count;
                foreach (var workItem in workItems)
                {
                    var count = Math.Min(notDistributedCount, workItem.Item2);
                    if (count > 0)
                    {
                        var workItemRequestDetails =
                            RepositoryFactory.GetWorkItemRequestDetailRepository().GetByWorkItemId(workItem.Item1.Id);
                        var wird = new WorkItemRequestDetail
                        {
                            WorkItem = workItem.Item1,
                            DoneCount = count,
                            RequestDetail = detail,
                            SortOrder = workItemRequestDetails.Count,
                            IsOverflowDistribution = true
                        };
                        notDistributedCount -= count;
                        RepositoryFactory.GetWorkItemRequestDetailRepository().Insert(wird);
                        //workItem.OverflowCount -= count;
                        //RepositoryFactory.GetWorkItemRepository().Update(workItem);
                    }
                }
            }
        }
    }

    public class ShipmentItemController{
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
