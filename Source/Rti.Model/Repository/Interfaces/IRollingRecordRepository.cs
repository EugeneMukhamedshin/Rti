using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRollingRecordRepository
    {
        IList<RollingRecord> GetByInterval(DateTime startDate, DateTime endDate);
        int GetNextSortOrder();
    }
}