using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestDetailRepository
    {
        IList<RequestDetail> GetByRequestId(int requestId);
        IList<RequestDetail> GetReadyToProduceByDrawingId(int drawingId);
        IList<Tuple<int, decimal>> GetRequestsInProductionWithActualDoneCounts(int drawingId, DateTime date);
        IList<RequestDetail> GetRequestDetailsByIds(int[] ids);
    }
}