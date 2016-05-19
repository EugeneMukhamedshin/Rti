using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemPackageRepository
    {
        WorkItemPackage GetByEmployeeId(int employee, DateTime date);
    }
}