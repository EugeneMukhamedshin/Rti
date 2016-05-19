using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemPackageRepository
    {
        public WorkItemPackage GetByEmployeeId(int employeeId, DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Employee.Id == employeeId && o.Date == date).SingleOrDefault());
        }
    }
}