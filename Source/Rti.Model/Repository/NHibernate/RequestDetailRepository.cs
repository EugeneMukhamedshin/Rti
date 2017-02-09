using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate;
using NHibernate.Criterion;
using NHibernate.Linq;
using NHibernate.Transform;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class RequestDetailRepository
    {
        public IList<RequestDetail> GetByRequestId(int requestId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Request.Id == requestId).List());
        }

        public IList<RequestDetail> GetReadyToProduceByDrawingId(int drawingId)
        {
            return
                ExecuteFuncOnQueryOver(
                    q =>
                        q.Where(
                            o =>
                                !o.IsDeleted && o.Drawing.Id == drawingId &&
                                (o.RequestDetailStateEnum == RequestDetailState.ReadyToProduce ||
                                 o.RequestDetailStateEnum == RequestDetailState.InProduction)).List());
        }

        public IList<Tuple<int, int, int>> GetRequestsInProductionWithActualDoneCounts(int drawingId, WorkItem onWorkItem)
        {
            return ExecuteFuncOnSession(
                s => s.CreateSQLQuery(@"
SELECT
  rd.id,
  r.count AS request_count,
  r.done AS done_count
FROM (SELECT
    rd.id,
    rd.count,
    SUM(IFNULL(wird.done_count, 0)) done
  FROM request_details rd
    LEFT JOIN (SELECT
      wird.*
    FROM work_item_request_details wird
      INNER JOIN work_items wi
        ON wird.work_item_id = wi.id
        AND (wi.work_date < :p_work_date
        OR wi.work_date = :p_work_date
        AND wi.sort_order < :p_sort_order)) wird
      ON wird.request_detail_id = rd.id
  WHERE rd.drawing_id = :p_drawing_id
  AND rd.is_deleted = 0
  AND rd.request_detail_state_enum <> 0
  GROUP BY rd.id,
           rd.count) r
  INNER JOIN request_details rd
    ON rd.id = r.id
  INNER JOIN requests r1 ON rd.request_id = r1.id
WHERE r.count > r.done
  ORDER BY r1.id, rd.id")
                    .SetInt32("p_drawing_id", drawingId)
                    .SetDateTime("p_work_date", onWorkItem.WorkDate)
                    .SetInt32("p_sort_order", onWorkItem.SortOrder)
                    .SetResultTransformer(
                        new ResultTransformer(
                            fields =>
                                new Tuple<int, int, int>(
                                    (int)fields[0], (int)fields[1],
                                    decimal.ToInt32((decimal)fields[2])),
                            objects => objects.Cast<Tuple<int, int, int>>().ToList()))
                    .List<Tuple<int, int, int>>(), "");
        }

        public IList<RequestDetail> GetRequestDetailsByIds(int[] ids)
        {
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Id).IsIn(ids).List());
        }

        public int GetNotShippedCount(int drawingId, DateTime date)
        {
            return
                ExecuteFuncOnQueryOver(
                    q =>
                        q.Where(
                            o =>
                                !o.IsDeleted && o.Drawing.Id == drawingId &&
                                o.RequestDetailStateEnum != RequestDetailState.New &&
                                o.RequestDetailStateEnum != RequestDetailState.Shipped &&
                                o.Request.RegDate <= date)
                            .Select(Projections.Sum<RequestDetail>(o => o.Count)).UnderlyingCriteria.UniqueResult<int>());
        }

        public IList<Tuple<int, int, int>> GetCountsByRequestId(int requestId, DateTime date, int? shipmentOrder = null)
        {
            return ExecuteFuncOnSession(
                session =>
                {
                    RequestDetail rd = null;
                    WorkItemRequestDetail wird = null;
                    ShipmentItem si = null;
                    WorkItem wi = null;
                    Shipment s = null;
                    object doneCount = null;
                    object shippedCount = null;
                    var order = shipmentOrder ?? int.MaxValue;
                    return session.QueryOver(() => rd)
                        .Where(() => !rd.IsDeleted && rd.Request.Id == requestId)
                        .SelectList(list => list
                            .Select(r => r.Id)
                            .SelectSubQuery(QueryOver.Of(() => wird)
                                .JoinAlias(o => o.WorkItem, () => wi)
                                .Where(() => wird.RequestDetail.Id == rd.Id && wi.WorkDate <= date)
                                .SelectList(l => l
                                    .SelectSum(() => wird.DoneCount).WithAlias(() => doneCount)
                                ))
                            .SelectSubQuery(QueryOver.Of(() => si)
                                .JoinAlias(o => o.Shipment, () => s)
                                .Where(() => si.RequestDetail.Id == rd.Id && (s.Date < date || s.Date == date && s.SortOrder < order))
                                .SelectList(l => l
                                    .SelectSum(() => si.Count).WithAlias(() => shippedCount)
                                ))
                        ).List<object[]>().Select(o => new Tuple<int, int, int>((int)o[0], (int?) o[1] ?? 0, (int?)o[2] ?? 0)).ToList();
                });
        }
    }
}