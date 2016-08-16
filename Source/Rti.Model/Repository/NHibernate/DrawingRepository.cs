using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using NHibernate.Criterion;
using NHibernate.Linq;
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
            return GetAllActive();
        }
    }
}