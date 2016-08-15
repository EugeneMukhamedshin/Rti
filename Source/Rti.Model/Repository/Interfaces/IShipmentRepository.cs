using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IShipmentRepository
    {
        IList<Shipment> GetByPeriod(DateTime startDate, DateTime endDate);
        int GetNextSortOrder();
    }
}