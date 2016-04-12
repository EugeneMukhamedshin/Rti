using System.Collections.Generic;
using NHibernate.Criterion;
using NHibernate.Impl;
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
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).Skip(page * pageSize).Take(pageSize).List());
        }
    }
}