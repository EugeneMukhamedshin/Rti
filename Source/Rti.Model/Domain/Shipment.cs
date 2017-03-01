using System.Collections.Generic;

namespace Rti.Model.Domain
{
    public partial class Shipment
    {public virtual IList<ShipmentItem> ShipmentItems { get; set; }
    }
}