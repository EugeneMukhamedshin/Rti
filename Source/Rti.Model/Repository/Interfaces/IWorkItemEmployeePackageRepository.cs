using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemEmployeePackageRepository
    {
        WorkItemEmployeePackage GetByEmployeeId(int employee, DateTime date);
    }
}