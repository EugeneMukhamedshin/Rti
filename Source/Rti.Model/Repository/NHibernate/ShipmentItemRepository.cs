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

        public IList<ShipmentItem> GetFollowingItems(ShipmentItem shipmentItem)
        {
            RequestDetail requestDetail = null;
            Shipment shipment = null;
            return ExecuteFuncOnQueryOver(q => q
                .JoinAlias(o => o.RequestDetail, () => requestDetail)
                .JoinAlias(o => o.Shipment, () => shipment)
                .Where(() => requestDetail.Drawing.Id == shipmentItem.RequestDetail.Drawing.Id &&
                             (shipment.Date > shipmentItem.Shipment.Date ||
                              shipment.Date == shipmentItem.Shipment.Date &&
                              shipment.SortOrder > shipmentItem.Shipment.SortOrder))
                .List());
        }
    }
}