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
        /// <param name="onWorkItemId"></param>
        /// <returns></returns>
        IList<Tuple<int, int, int>> GetRequestsInProductionWithActualDoneCounts(int drawingId, int onWorkItemId);
        IList<RequestDetail> GetRequestDetailsByIds(int[] ids);
        int GetNotShippedCount(int drawingId, DateTime date);
    }
}