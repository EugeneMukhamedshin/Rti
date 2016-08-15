using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemEmployeePackageMachineRepository
    {
        public IList<WorkItemEmployeePackageMachine> GetByWorkItemEmployeePackageId(int workItemEmployeePackageId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkItemEmployeePackage.Id == workItemEmployeePackageId).List());
        }
    }
}