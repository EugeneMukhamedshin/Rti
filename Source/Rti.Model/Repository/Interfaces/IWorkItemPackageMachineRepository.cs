using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemEmployeePackageMachineRepository
    {
        IList<WorkItemEmployeePackageMachine> GetByWorkItemEmployeePackageId(int workItemEmployeePackageId);
    }
}