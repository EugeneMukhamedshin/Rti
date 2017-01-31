using System;

namespace Rti.Model.Domain.ReportEntities
{
    public class RequestsReportRow : IIdentifiedEntity
    {
        public bool IsWorkStarted
        {
            get { return WorkStartDate.HasValue; }
        }

        //public RequestStatus Status
        //{
        //    get
        //    {
        //        return Diff > LeadTime
        //            ? RequestStatus.Green
        //            : Diff == LeadTime ? RequestStatus.Yellow : RequestStatus.Red;
        //    }
        //}

        public int Id { get; set; }
        public int Number { get; set; }
        public DateTime RegDate { get; set; }
        public int? LeadTime { get; set; }
        public DateTime? ShipDate { get; set; }
        public DateTime? WorkStartDate { get; set; }
        public DateTime? LastPaymentDate { get; set; }
        public DateTime? LastShipmentDate { get; set; }
        public int? EquipmentLeadTime { get; set; }
        public RequestStatus Status { get; set; }
        public string Details { get; set; }
        public decimal? Sum { get; set; }
        public string CustomerName { get; set; }
    }
}
