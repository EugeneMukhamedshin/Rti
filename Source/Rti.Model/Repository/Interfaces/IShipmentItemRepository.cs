﻿using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IShipmentItemRepository
    {
        IList<ShipmentItem> GetByShipmentId(int shipmentId);
        IList<ShipmentItem> GetFollowingItems(int drawingId, DateTime shipmentDate, int shipmentOrder);
        IList<ShipmentItem> GetByShipmentIds(int[] shipmentIds);
        IList<ShipmentItem> GetByPaymentIds(int[] paymentIds);
    }
}