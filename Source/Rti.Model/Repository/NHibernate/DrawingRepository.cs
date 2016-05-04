using System.Collections.Generic;
using System.Linq;
using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class DrawingRepository
    {
        public IList<Drawing> GetAllActive()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List());
        }

        public IList<Drawing> GetPage(int page, int pageSize)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).OrderBy(o => o.CreationDate).Desc.Skip(page * pageSize).Take(pageSize + 1).List());
        }

        public int GetNextSortOrder()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).Select(Projections.Max<Drawing>(o => o.SortOrder)).SingleOrDefault<int>() + 1);
        }
    }
}