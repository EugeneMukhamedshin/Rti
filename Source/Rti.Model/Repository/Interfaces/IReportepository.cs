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
        XDocument GetWorkItemDirectExpencesReport(DateTime startDate, DateTime endDate);
        XDocument GetShipmentDirectExpencesReport(DateTime startDate, DateTime endDate, int? shipmentId);
        XDocument GetSalaryReport(DateTime startDate, DateTime endDate, int? employeeId);
        XDocument GetMakedDetailsReport(DateTime startDate, DateTime endDate, int? drawingId);
        XDocument GetMaterialMovingFullReport(DateTime startDate, DateTime endDate);
        XDocument GetMaterialMovingRequestReport(DateTime startDate, DateTime endDate);
        XDocument GetMaterialMovingShipmentReport(DateTime startDate, DateTime endDate);
        XDocument GetMaterialMovingWorkItemReport(DateTime startDate, DateTime endDate);
    }
}