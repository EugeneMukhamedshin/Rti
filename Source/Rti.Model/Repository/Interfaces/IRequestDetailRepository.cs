using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestDetailRepository
    {
        IList<RequestDetail> GetByRequestId(int requestId);
        IList<RequestDetail> GetReadyToProduceByDrawingId(int drawingId);

        /// <summary>
        /// Возвращает набор кортежей, Item1 - requestDetailId, Item2 - requestCount, Item3 - doneCount
        /// </summary>
        /// <param name="drawingId"></param>
        /// <param name="onWorkItem"></param>
        /// <returns></returns>
        IList<Tuple<int, int, int>> GetRequestsInProductionWithActualDoneCounts(int drawingId, WorkItem onWorkItem);

        IList<RequestDetail> GetRequestDetailsByIds(int[] ids);
        int GetNotShippedCount(int drawingId, DateTime date);

        /// <summary>
        /// Возвращает строки заявки в кортеже с изготовленным количеством (Item2) и отгруженным количество (Item3)
        /// </summary>
        /// <param name="requestId">Идентификатор заявки</param>
        /// <param name="date">Дата, на которую необходимо получить остатки по изготовленному количеству и отгруженному количеству</param>
        /// <param name="shipmentOrder">Номер отгрузки в текущей дате, если null, то учитываются все отгрузки в текущей дате</param>
        /// <returns></returns>
        IList<Tuple<int, int, int>> GetCountsByRequestId(int requestId, DateTime date, int? shipmentOrder = null);
    }
}