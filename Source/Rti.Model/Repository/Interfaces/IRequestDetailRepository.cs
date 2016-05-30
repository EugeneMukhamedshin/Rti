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
        /// ���������� ����� ��������, Item1 - requestId, Item2 - requestCount, Item3 - doneCount
        /// </summary>
        /// <param name="drawingId"></param>
        /// <param name="date"></param>
        /// <returns></returns>
        IList<Tuple<int, int, int>> GetRequestsInProductionWithActualDoneCounts(int drawingId, DateTime date);
        IList<RequestDetail> GetRequestDetailsByIds(int[] ids);
        int GetNotShippedCount(int drawingId, DateTime date);
    }
}