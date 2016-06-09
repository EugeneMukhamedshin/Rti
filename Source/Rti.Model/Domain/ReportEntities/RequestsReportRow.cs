using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rti.Model.Domain.ReportEntities
{
    public class RequestsReportRow
    {
        public int Id { get; set; }
        public int Number { get; set; }
        public DateTime RegDate { get; set; }
        public int? LeadTime { get; set; }
        public DateTime? ShipDate { get; set; }
        public DateTime? LastPaymentDate { get; set; }
        public DateTime? LastShipmentDate { get; set; }
        public int? EquipmentLeadTime { get; set; }
        public int? Diff { get; set; }
    }
}
