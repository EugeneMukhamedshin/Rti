<<<<<<< HEAD
﻿using System;
=======
using System;
>>>>>>> origin/develop
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemEmployeePackageRepository
    {
        public WorkItemEmployeePackage GetByEmployeeId(int employeeId, DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Employee.Id == employeeId && o.Date == date).SingleOrDefault());
        }
    }
}