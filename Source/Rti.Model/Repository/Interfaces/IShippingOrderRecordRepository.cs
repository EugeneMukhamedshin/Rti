using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IShippingOrderRecordRepository
    {
        IList<ShippingOrderRecord> GetByInterval(DateTime startDate, DateTime endDate, int? customerId);
        int GetNextSortOrder();
    }
}