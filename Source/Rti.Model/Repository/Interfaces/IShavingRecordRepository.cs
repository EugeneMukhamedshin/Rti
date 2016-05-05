using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IShavingRecordRepository
    {
        IList<ShavingRecord> GetByInterval(DateTime startDate, DateTime endDate, int? shaverEmployeeId);
        int GetNextSortOrder();
    }
}