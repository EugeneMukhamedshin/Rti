using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IEmployeeWorkItemPackageRepository : IRepository<Rti.Model.Domain.EmployeeWorkItemPackage> {
        EmployeeWorkItemPackage GetByEmployeeId(int employee, DateTime date);
    }
}