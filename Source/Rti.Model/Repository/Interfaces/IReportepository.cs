using System;
using System.Xml.Linq;

namespace Rti.Model.Repository.Interfaces
{
    public interface IReportRepository
    {
        XDocument GetRequestsByMethodsReport(DateTime startDate, DateTime endDate);
        XDocument GetDrawingShipmentsReport(DateTime startDate, DateTime endDate, int? drawingId);
        XDocument GetUsedMaterialsReport(DateTime startDate, DateTime endDate, int? materialId);
        XDocument GetRequestDirectExpencesReport(DateTime startDate, DateTime endDate, int? requestId);
    }
}