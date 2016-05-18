using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemRequestDetailRepository : NHibernateRepository<WorkItemRequestDetail>, IWorkItemRequestDetailRepository
    {
        public IList<WorkItemRequestDetail> GetByWorkItemId(int workItemId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkItem.Id == workItemId).List());
        }

        public IList<WorkItemRequestDetail> GetByRequestDetailId(int requestDetailId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.RequestDetail.Id == requestDetailId).List());
        }
    }
}