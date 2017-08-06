using System;
using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IShipmentRepository
    {
        IList<Shipment> GetByPeriod(DateTime startDate, DateTime endDate, int? customerId, int? drawingId);
        int GetNextSortOrder(DateTime shipmentDate, bool isReplace, bool isAddition);
        IList<Shipment> GetByPaymentIds(int[] paymentIds);
        IList<ShipmentRow> GetRowsByPeriod(DateTime startDate, DateTime endDate, int? selectedCustomerId, int? selectedDrawingId);
    }
}