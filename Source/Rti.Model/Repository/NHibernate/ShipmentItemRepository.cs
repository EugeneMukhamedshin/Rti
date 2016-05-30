using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ShipmentItemRepository
    {
        public IList<ShipmentItem> GetByShipmentId(int shipmentId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Shipment.Id == shipmentId).List());
        }
    }
}