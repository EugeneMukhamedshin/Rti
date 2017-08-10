using System;

namespace Rti.Model.Domain.ReportEntities
{
    public class ShipmentRow : IIdentifiedEntity
    {
        public int Id { get; set; }
        public DateTime Date { get; set; }
        public int SortOrder { get; set; }
        public bool IsReplace { get; set; }
        public bool IsAddition { get; set; }
        public string Details { get; set; }
        public string FullNumber => $"{SortOrder}{(IsReplace ? "Б" : IsAddition ? "Д" : string.Empty)}";
        public string DetailsMultilined => Details.Replace(';', '\n');
        public string CustomerName { get; set; }
        public int RequestNumber { get; set; }
        public DateTime RequestRegDate { get; set; }
        public DateTime? InvoiceDate { get; set; }
        public decimal ShipmentSum { get; set; }
        public decimal RequestSum { get; set; }
        public decimal SumDiff => RequestSum - ShipmentSum;
    }
}
