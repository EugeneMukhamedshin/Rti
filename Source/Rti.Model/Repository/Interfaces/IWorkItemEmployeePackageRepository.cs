using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemEmployeePackageRepository
    {
        IList<WorkItemEmployeePackage> GetByEmployeeIds(int[] employees, DateTime date);
    }
}