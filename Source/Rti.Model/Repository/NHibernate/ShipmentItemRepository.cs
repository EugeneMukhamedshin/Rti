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

        public IList<ShipmentItem> GetFollowingItems(int drawingId, DateTime shipmentDate, int shipmentOrder)
        {
            RequestDetail requestDetail = null;
            Shipment shipment = null;
            return ExecuteFuncOnQueryOver(q => q
                .JoinAlias(o => o.RequestDetail, () => requestDetail)
                .JoinAlias(o => o.Shipment, () => shipment)
                .Where(() => requestDetail.Drawing.Id == drawingId &&
                             (shipment.Date > shipmentDate ||
                              shipment.Date == shipmentDate &&
                              shipment.SortOrder > shipmentOrder))
                .List());
        }
    }
}