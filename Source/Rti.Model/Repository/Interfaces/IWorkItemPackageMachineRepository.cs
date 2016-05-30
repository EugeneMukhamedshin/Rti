using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemPackageMachineRepository
    {
        IList<WorkItemPackageMachine> GetByWorkItemPackageId(int workItemPackageId);
    }
}