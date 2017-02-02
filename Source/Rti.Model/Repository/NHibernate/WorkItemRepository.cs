﻿using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate;
using NHibernate.Criterion;
using NHibernate.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemRepository : NHibernateRepository<Rti.Model.Domain.WorkItem>, IWorkItemRepository
    {
        public IList<WorkItem> GetByDate(DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkDate == date).OrderBy(o => o.SortOrder).Asc.List());
        }

        public IList<WorkItem> GetByEmployeeId(int employeeId, DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkDate == date && o.Employee.Id == employeeId).OrderBy(o => o.SortOrder).Asc.List());
        }

        public IList<WorkItem> GetByDrawingId(int drawingId, DateTime startDate, DateTime endDate)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId && o.WorkDate >= startDate && o.WorkDate <= endDate).List());
        }

        public IList<Tuple<int, int>> GetNotShippedByDrawingId(int drawingId, DateTime date, int sortOrder)
        {
            return ExecuteFuncOnSession(
                s => s.CreateSQLQuery(@"
SELECT
  wi.id,
  wi.done_count - SUM(IFNULL(siwi.count, 0)) not_shipped_count
FROM work_items wi
  LEFT JOIN (SELECT
      siwi.work_item_id,
      siwi.count,
      s.sort_order,
      s.date
    FROM shipment_item_work_items siwi
      LEFT JOIN shipment_items si
        ON si.id = siwi.shipment_item_id
      LEFT JOIN shipments s
        ON si.shipment_id = s.id) siwi
    ON siwi.work_item_id = wi.id
    AND (siwi.date < :p_date
    OR siwi.date = :p_date
    AND siwi.sort_order < :p_sort_order
    )
WHERE wi.drawing_id = :p_drawing_id
AND wi.work_date < :p_date
AND wi.done_count - IFNULL(siwi.count, 0) > 0
GROUP BY wi.id,
         wi.done_count
ORDER BY wi.work_date, wi.sort_order")
                    .SetInt32("p_drawing_id", drawingId)
                    .SetDateTime("p_date", date)
                    .SetInt32("p_sort_order", sortOrder)
                    .SetResultTransformer(
                        new ResultTransformer(
                            fields =>
                                new Tuple<int, int>(
                                    Convert.ToInt32(fields[0]),
                                    Convert.ToInt32(fields[1])),
                            objects => objects.Cast<Tuple<int, int>>().ToList()))
                    .List<Tuple<int, int>>(), "");
        }

        public IList<WorkItem> GetWorkItemsByIds(int[] ids)
        {
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Id).IsIn(ids).List());
        }

        public IList<ValueTuple<WorkItem, int>> GetOverflowed(int drawingId, DateTime forDate)
        {
            var overflows = ExecuteFuncOnSession(
                s => s.CreateSQLQuery(@"
SELECT
  work_item_id,
  overflow_count
FROM (SELECT
    wi.id AS work_item_id,
    IFNULL(wi.overflow_count, 0) - SUM(IFNULL(wird.done_count, 0)) AS overflow_count
  FROM work_items wi
    LEFT JOIN work_item_request_details wird
      ON wi.id = wird.work_item_id
      AND wird.is_overflow_distribution = 1
  WHERE wi.drawing_id = IFNULL(:p_drawing_id, wi.drawing_id)
  AND wi.work_date < :p_date
  GROUP BY wi.id) t
WHERE t.overflow_count > 0")
                    .SetInt32("p_drawing_id", drawingId)
                    .SetDateTime("p_date", forDate)
                    .SetResultTransformer(
                        new ResultTransformer(
                            fields => (Convert.ToInt32(fields[0]), Convert.ToInt32(fields[1])),
                            objects => objects.Cast<(int, int)>().ToList()))
                    .List<(int, int)>(), "");
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Id).IsIn(overflows.Select(d => d.Item1).ToArray()).OrderBy(o => o.WorkDate).Asc.ThenBy(o => o.SortOrder).Asc.List()
            .Select(o => (o, overflows.First(d => d.Item1.Equals(o.Id)).Item2)).ToList());
        }
    }
}