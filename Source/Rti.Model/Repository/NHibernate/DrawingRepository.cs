using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
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

        public IList<Drawing> GetPage(int page, int pageSize, string filter, IEnumerable<Expression<Func<Drawing, object>>> expressions = null)
        {
            return ExecuteFuncOnQueryOver(
                q =>
                {
                    q.Where(o => !o.IsDeleted);
                    if (!string.IsNullOrWhiteSpace(filter))
                    {
                        var filterString = string.Format("%{0}%", filter);
                        Detail detail = null;
                        Group group = null;
                        Material materialByPassport = null;
                        Material material = null;
                        Equipment equipment = null;
                        Method method = null;
                        q.Left.JoinAlias(o => o.Detail, () => detail)
                         .Left.JoinAlias(o => o.Group, () => group)
                         .Left.JoinAlias(o => o.MaterialByPassport, () => materialByPassport)
                         .Left.JoinAlias(o => o.Material, () => material)
                         .Left.JoinAlias(o => o.Equipment, () => equipment)
                         .Left.JoinAlias(o => o.Method, () => method);
                        q.And(
                            Restrictions.Or(
                                Restrictions.Or(
                                    Restrictions.Or(
                                        Restrictions.Or(
                                            Restrictions.Or(
                                                Restrictions.Or(
                                                    Restrictions.Or(
                                                        Restrictions.On<Drawing>(o => o.AdditionalInfo)
                                                            .IsInsensitiveLike(filterString),
                                                        Restrictions.On<Drawing>(o => o.Name)
                                                            .IsInsensitiveLike(filterString)
                                                        ),
                                                    Restrictions.On(() => detail.Name).IsInsensitiveLike(filterString)
                                                    ), Restrictions.On(() => group.Name).IsInsensitiveLike(filterString)
                                                ),
                                            Restrictions.On(() => materialByPassport.Name)
                                                .IsInsensitiveLike(filterString)
                                            ), Restrictions.On(() => material.Name).IsInsensitiveLike(filterString)
                                        ), Restrictions.On(() => equipment.Name).IsInsensitiveLike(filterString)
                                    ), Restrictions.On(() => method.Name).IsInsensitiveLike(filterString)
                                ));
                    }
                    q.OrderBy(o => o.CreationDate).Desc.Skip(page * pageSize).Take(pageSize + 1);
                    return q.List();
                }, expressions);
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

        public IList<Tuple<Drawing, int, int>> GetAllInWork(DateTime date, int sortOrder)
        {
            var drawings = ExecuteFuncOnSession(
                s => s.CreateSQLQuery(@"
SELECT DISTINCT
  t.drawing_id,
  t.done_count,
  t.COUNT - t.done_count AS remained_count
FROM (SELECT
    rd.ID,
    rd.drawing_id,
    rd.COUNT,
    SUM(IFNULL(wird.done_count, 0)) done_count
  FROM request_details rd
    INNER JOIN requests r
      ON rd.request_id = r.ID
    LEFT JOIN (SELECT
        wird.request_detail_id,
        wi.work_date,
        wi.sort_order,
        wird.done_count
      FROM work_item_request_details wird
        INNER JOIN work_items wi
          ON wird.work_item_id = wi.ID
      WHERE wi.work_date < :p_date
      OR (wi.work_date = :p_date
      AND wi.sort_order < :p_sort_order)) wird
      ON rd.ID = wird.request_detail_id
  WHERE rd.is_deleted = 0
  AND r.is_deleted = 0
  AND rd.request_detail_state_enum <> 0
  GROUP BY rd.ID
  HAVING rd.COUNT > SUM(IFNULL(wird.done_count, 0))) t")
                    .SetDateTime("p_date", date)
                    .SetInt32("p_sort_order", sortOrder)
                    .SetResultTransformer(
                        new ResultTransformer(
                            fields => new Tuple<int, int, int> (Convert.ToInt32(fields[0]), Convert.ToInt32(fields[1]), Convert.ToInt32(fields[2])),
                            objects => objects.Cast<Tuple<int, int, int>>().ToList()))
                    .List<Tuple<int, int, int>>(), "");
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Id).IsIn(drawings.Select(d => d.Item1).ToArray()).OrderBy(o => o.CreationDate).Asc.List()
            .Select(o => new Tuple <Drawing, int, int>(o, drawings.First(d => d.Item1.Equals(o.Id)).Item2, drawings.First(d => d.Item1.Equals(o.Id)).Item3)).ToList());
        }

        public IList<(Drawing, int)> GetAllWithOverflowCount(DateTime date)
        {
            var drawings = ExecuteFuncOnSession(
                s => s.CreateSQLQuery(@"
SELECT
  d.id,
  IFNULL(SUM(wi1.overflow_count), 0)
FROM drawings d
  LEFT JOIN (SELECT
      wi.id AS work_item_id,
      wi.drawing_id,
      wi.work_date,
      IFNULL(wi.overflow_count, 0) - SUM(IFNULL(wird.done_count, 0)) AS overflow_count
    FROM work_items wi
      LEFT JOIN work_item_request_details wird
        ON wi.id = wird.work_item_id
        AND wird.is_overflow_distribution = 1
    GROUP BY wi.id) wi1
    ON d.id = wi1.drawing_id
    AND wi1.work_date <= :p_date
WHERE d.is_deleted = 0
GROUP BY d.id")
                    .SetDateTime("p_date", date)
                    .SetResultTransformer(
                        new ResultTransformer(
                            fields => (Convert.ToInt32(fields[0]), Convert.ToInt32(fields[1])),
                            objects => objects.Cast<(int, int)>().ToList()))
                    .List<(int, int)>(), "");
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Id).IsIn(drawings.Select(d => d.Item1).ToArray()).OrderBy(o => o.CreationDate).Asc.List()
            .Select(o => (o, drawings.First(d => d.Item1.Equals(o.Id)).Item2)).ToList());
        }
    }
}