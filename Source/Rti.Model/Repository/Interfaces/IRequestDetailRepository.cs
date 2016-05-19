using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestDetailRepository
    {
        IList<RequestDetail> GetByRequestId(int requestId);
        IList<RequestDetail> GetReadyToProduceByDrawingId(int drawingId);
        IList<Tuple<int, int, int>> GetRequestsInProductionWithActualDoneCounts(int drawingId, DateTime date);
        IList<RequestDetail> GetRequestDetailsByIds(int[] ids);
        int GetNotShippedCount(int drawingId, DateTime date);
    }
}