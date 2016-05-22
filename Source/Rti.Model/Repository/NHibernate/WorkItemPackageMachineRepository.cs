using System.Collections.Generic;
using NHibernate;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemPackageMachineRepository : NHibernateRepository<Rti.Model.Domain.WorkItemPackageMachine>, IWorkItemPackageMachineRepository
    {
        public IList<WorkItemPackageMachine> GetByWorkItemPackageId(int workItemPackageId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkItemPackage.Id == workItemPackageId).List());
        }
    }
}