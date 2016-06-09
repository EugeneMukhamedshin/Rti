using System;

namespace Rti.Model.Domain.ReportEntities
{
    public class RejectionReportRow
    {
        public string EmployeeName { get; set; }
        public int RequestNumber { get; set; } 
        public DateTime RequestRegDate { get; set; }
        public string DrawingName { get; set; }
        public string DetailName { get; set; }
        public int RejectedCount { get; set; }
        public string MaterialName { get; set; }
        public double RejectedMass { get; set; }
        public decimal RejectedPrice { get; set; }
        public decimal Expences { get; set; }
    }
}
