using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using NHibernate.Criterion;
using NHibernate.Linq;
using NHibernate.Transform;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class DrawingRepository
    {
        public IList<Drawing> GetAllActive(IEnumerable<Expression<Func<Drawing, object>>> expressions = null)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List(), expressions);
        }

        public IList<Drawing> GetPage(int page, int pageSize, IEnumerable<Expression<Func<Drawing, object>>> expressions = null)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).OrderBy(o => o.CreationDate).Desc.Skip(page * pageSize).Take(pageSize + 1).List(), expressions);
        }

        public int GetNextSortOrder()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).Select(Projections.Max<Drawing>(o => o.SortOrder)).SingleOrDefault<int>() + 1);
        }

        public IList<Drawing> GetUnpaidEquipments()
        {
            return ExecuteFuncOnQueryOver(q =>
            {
                Equipment eq = null;
                return q.JoinAlias(o => o.Equipment, () => eq).Where(o => !eq.IsPaid).List();
            });
        }

        public IList<Drawing> GetAllInWork()
        {
            var ids = ExecuteFuncOnSession(
                s => s.CreateSQLQuery(@"
SELECT DISTINCT
  t.drawing_id
FROM (SELECT
    rd.id,
    rd.drawing_id,
    rd.count,
    SUM(IFNULL(wird.done_count, 0)) done_count
  FROM request_details rd
    INNER JOIN requests r
      ON rd.request_id = r.id
    LEFT JOIN work_item_request_details wird
      ON rd.id = wird.request_detail_id
    LEFT JOIN work_items wi
      ON wird.work_item_id = wi.id
  WHERE rd.is_deleted = 0
  AND r.is_deleted = 0
  GROUP BY rd.id
  HAVING rd.count > SUM(IFNULL(wird.done_count, 0))) t")
                    .SetResultTransformer(
                        new ResultTransformer(
                            fields =>
                                Convert.ToInt32(fields[0]),
                            objects => objects.Cast<int>().ToList()))
                    .List<int>(), "");
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Id).IsIn(ids.ToArray()).OrderBy(o => o.CreationDate).Asc.List());
        }
    }
}