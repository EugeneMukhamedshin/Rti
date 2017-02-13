using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IMaterialArrivalRecordRepository
    {
        IList<MaterialArrivalRecord> GetByInterval(DateTime startDate, DateTime endDate, int? supplierId, int? materialId);
        int GetNextSortOrder();
    }
}