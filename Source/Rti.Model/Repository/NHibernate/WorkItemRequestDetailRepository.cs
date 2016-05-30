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

        public void DeleteByWorkItemId(int workItemId)
        {
            ExecuteActionOnSession(
                s =>
                    s.CreateSQLQuery("delete from work_item_request_details where work_item_id = :p_work_item_id")
                        .SetInt32("p_work_item_id", workItemId)
                        .ExecuteUpdate(), "");
        }
    }
}