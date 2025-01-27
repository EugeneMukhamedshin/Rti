﻿using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemPackageRepository
    {
        public WorkItemPackage GetByDate(DateTime date)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Date == date).SingleOrDefault());
        }
    }
}