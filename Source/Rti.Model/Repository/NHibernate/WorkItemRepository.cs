using System;
using System.Collections.Generic;
using NHibernate;
using NHibernate.Criterion;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemRepository : NHibernateRepository<Rti.Model.Domain.WorkItem>, IWorkItemRepository
    {
        public IList<WorkItem> GetByDate(DateTime date)
        {
            //return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkDate == date).OrderBy(o => o.SortOrder).Asc.List());
            return ExecuteFuncOnSession(s =>
            {
                var criteria = s.CreateCriteria(typeof (WorkItem));
                return criteria.Add(Restrictions.Eq("WorkDate", date.Date)).List<WorkItem>();
            }, "");
        }
    }
}