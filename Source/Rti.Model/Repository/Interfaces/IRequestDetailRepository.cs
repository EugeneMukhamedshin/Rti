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
<<<<<<< HEAD
        /// Ð’Ð¾Ð·Ð²Ñ€Ð°Ñ‰Ð°ÐµÑ‚ Ð½Ð°Ð±Ð¾Ñ€ ÐºÐ¾Ñ€Ñ‚ÐµÐ¶ÐµÐ¹, Item1 - requestDetailId, Item2 - requestCount, Item3 - doneCount
=======
        /// Âîçâðàùàåò íàáîð êîðòåæåé, Item1 - requestDetailId, Item2 - requestCount, Item3 - doneCount
>>>>>>> origin/develop
        /// </summary>
        /// <param name="drawingId"></param>
        /// <param name="date"></param>
        /// <returns></returns>
        IList<Tuple<int, int, int>> GetRequestsInProductionWithActualDoneCounts(int drawingId, DateTime date);
        IList<RequestDetail> GetRequestDetailsByIds(int[] ids);
        int GetNotShippedCount(int drawingId, DateTime date);
    }
}