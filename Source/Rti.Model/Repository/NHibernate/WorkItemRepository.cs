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
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkDate == date).OrderBy(o => o.SortOrder).Asc.List());
        }

        public IList<WorkItem> GetByEmployeeId(int employeeId, DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkDate == date && o.Employee.Id == employeeId).OrderBy(o => o.SortOrder).Asc.List());
        }

        public IList<WorkItem> GetByDrawingId(int drawingId, DateTime startDate, DateTime? endDate = null)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId && o.WorkDate >= startDate).List());
        }
    }
}