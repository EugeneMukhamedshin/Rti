using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class EmployeeWorkItemPackageRepository
    {
        public EmployeeWorkItemPackage GetByEmployeeId(int employeeId, DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Employee.Id == employeeId && o.Date == date).SingleOrDefault());
        }
    }
}