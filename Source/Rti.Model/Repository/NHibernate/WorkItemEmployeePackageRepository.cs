using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemEmployeePackageRepository
    {
        public IList<WorkItemEmployeePackage> GetByEmployeeIds(int[] employeeIds, DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Date == date).AndRestrictionOn(o => o.Employee).IsIn(employeeIds).List());
        }
    }
}