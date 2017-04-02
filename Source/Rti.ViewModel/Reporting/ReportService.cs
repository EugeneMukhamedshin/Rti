using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using System.Xml.Xsl;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Reporting.Generator;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Reporting
{
    public class ReportService
    {
        public IRepositoryFactory RepositoryFactory { get; private set; }
        public string XslPath { get; set; }

        #region Protected

        protected byte[] GetReport(Func<IReportRepository, XDocument> reportGetFunc, string xsl)
        {
            var repository = RepositoryFactory.GetReportRepository();
            var doc = reportGetFunc(repository);
            return XslTransformation(doc.CreateNavigator(), xsl);
        }

        protected static byte[] XslTransformation(IXPathNavigable xml, string xsl)
        {
            var xslt = new XslCompiledTransform();
            using (var layout = new StringReader(xsl))
            using (var stream = new MemoryStream())
            using (var xmlLayout = new XmlTextReader(layout))
            {
                xslt.Load(xmlLayout);
                return XslTransformationInternal(xml, xslt, stream);
            }
        }

        private static byte[] XslTransformationInternal(IXPathNavigable xml, XslCompiledTransform xslt,
            MemoryStream stream)
        {
            var args = new XsltArgumentList();
            args.AddExtensionObject("urn:rti", new XslExtensions());
            xslt.Transform(xml, args, stream);
            return stream.ToArray();
        }

        #endregion

        public ReportService(IRepositoryFactory repositoryFactory, string xslPath)
        {
            RepositoryFactory = repositoryFactory;
            XslPath = xslPath;
        }

        public byte[] GetRequestsByMethodsReport(DateTime startDate, DateTime endDate)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetRequestsByMethodsReport.xslt"));
            return GetReport(r => r.GetRequestsByMethodsReport(startDate, endDate), xsl);
        }

        public byte[] GetDrawingShipmentsReport(DateTime startDate, DateTime endDate, DrawingViewModel drawing)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetDrawingShipmentsReport.xslt"));
            return
                GetReport(
                    r => r.GetDrawingShipmentsReport(startDate, endDate, drawing == null ? (int?)null : drawing.Id),
                    xsl);
        }

        public byte[] GetUsedMaterialsReport(DateTime startDate, DateTime endDate, MaterialViewModel material)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetUsedMaterialsReport.xslt"));
            return
                GetReport(
                    r => r.GetUsedMaterialsReport(startDate, endDate, material == null ? (int?)null : material.Id), xsl);
        }

        public byte[] GetRequestDirectExpencesReport(DateTime startDate, DateTime endDate, RequestViewModel request)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetRequestDirectExpencesReport.xslt"));
            return
                GetReport(
                    r =>
                        r.GetRequestDirectExpencesReport(startDate, endDate, request == null ? (int?)null : request.Id),
                    xsl);
        }

        public byte[] GetWorkItemDirectExpencesReport(DateTime startDate, DateTime endDate)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetWorkItemDirectExpencesReport.xslt"));
            return GetReport(r => r.GetWorkItemDirectExpencesReport(startDate, endDate), xsl);
        }

        public byte[] GetShipmentDirectExpencesReport(DateTime startDate, DateTime endDate, ShipmentViewModel shipment)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShipmentDirectExpencesReport.xslt"));
            return
                GetReport(
                    r =>
                        r.GetShipmentDirectExpencesReport(startDate, endDate,
                            shipment == null ? (int?)null : shipment.Id), xsl);
        }

        public byte[] GetSalaryReport(DateTime startDate, DateTime endDate, EmployeeViewModel employee)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetSalaryReport.xslt"));
            return GetReport(r => r.GetSalaryReport(startDate, endDate, employee == null ? (int?)null : employee.Id),
                xsl);
        }

        private XDocument GetShipmentDocument(ShipmentViewModel shipment)
        {
            var shipmentItems =
                RepositoryFactory.GetShipmentItemRepository()
                    .GetByShipmentId(shipment.Id)
                    .Select(o => new ShipmentItemViewModel(o, RepositoryFactory));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("set", new XAttribute("name", "Shipments"),
                        shipment.GetXElement("Shipment")),
                    new XElement("set", new XAttribute("name", "ShipmentItems"),
                        shipmentItems.Select(o => o.GetXElement("ShipmentItem")))));
            return doc;
        }

        private XDocument GetRequestDocument(RequestViewModel request)
        {
            var requestDetails =
                RepositoryFactory.GetRequestDetailRepository()
                    .GetByRequestId(request.Id)
                    .Select(o => new RequestDetailViewModel(o, RepositoryFactory));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    request.GetXElement("Request"),
                    new XElement("RequestDetails",
                        requestDetails.Select(o => o.GetXElement("RequestDetail")))));
            return doc;
        }

        public byte[] GetShipmentTorg12Report(ShipmentViewModel shipment)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShipmentTorg12Report.xslt"));
            var doc = GetShipmentDocument(shipment);
            return GetReport(r => doc, xsl);
        }

        public byte[] GetShipmentFactureReport(ShipmentViewModel shipment)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShipmentFactureReport.xslt"));
            var doc = GetShipmentDocument(shipment);
            return GetReport(r => doc, xsl);
        }

        public byte[] GetShipmentTransportReport(ShipmentViewModel shipment)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShipmentTransportReport.xslt"));
            var doc = GetShipmentDocument(shipment);
            return GetReport(r => doc, xsl);
        }

        public byte[] GetShipmentPassportReport(ShipmentViewModel shipment)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShipmentPassportReport.xslt"));
            var doc = GetShipmentDocument(shipment);
            var dates = RepositoryFactory.GetReportRepository().GetRequestDetailsMadeDates(shipment.Request.Id);
            foreach (var shipmentItemElement in doc.XPathSelectElements("root/set[@name='ShipmentItems']/ShipmentItem"))
            {
                var dateElement =
                    dates.XPathSelectElement(string.Format("root/row[@RequestDetailId='{0}']",
                        shipmentItemElement.Element("RequestDetail").Attribute("Id").Value));
                if (dateElement != null)
                shipmentItemElement.Add(new XAttribute("DoneDate", dateElement.Attribute("DoneDate").Value));
            }
            return GetReport(r => doc, xsl);
        }

        public byte[] GetShipmentUniversalDocumentReport(ShipmentViewModel shipment)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShipmentUniversalDocumentReport.xslt"));
            var doc = GetShipmentDocument(shipment);
            return GetReport(r => doc, xsl);
        }

        public byte[] GetRequestSpecificationReport(RequestViewModel request)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetRequestSpecificationReport.xslt"));
            var doc = GetRequestDocument(request);
            return GetReport(r => doc, xsl);
        }

        public byte[] GetDrawingFlowsheetReport(DrawingViewModel drawing)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetDrawingFlowsheetReport.xslt"));
            var machines =
                RepositoryFactory.GetDrawingFlowsheetMachineRepository()
                    .GetByDrawingId(drawing.Id)
                    .Select(o => new DrawingFlowsheetMachineViewModel(o, RepositoryFactory));
            var processes =
                RepositoryFactory.GetDrawingFlowsheetProcessRepository()
                    .GetByDrawingId(drawing.Id)
                    .Where(o => o.NormTime != 0).Select(o => new DrawingFlowsheetProcessViewModel(o, RepositoryFactory));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    drawing.GetXElement("Drawing"),
                    new XElement("Machines",
                        machines.Select(o => o.GetXElement("Machine"))),
                    new XElement("Processes",
                        processes.Select(o => o.GetXElement("Process")))));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetDrawingCalculationReport(DrawingViewModel drawing, CalculationViewModel calculation)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetDrawingCalculationReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("Date", DateTime.Today)),
                    drawing.GetXElement("Drawing"),
                    calculation.GetXElement("Calculation")));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetWorkItemListReport(List<WorkItemViewModel> workItems, WorkItemPackageViewModel workItemPackage)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetWorkItemListReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    workItemPackage.GetXElement("WorkItemPackage"),
                    new XElement("WorkItems",
                    workItems.Select(o => o.GetXElement("WorkItem")))));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetEmployeeWorkItemListReport(List<EmployeeWorkItemListReportViewModel.ReportWorkItemPackageViewModel> workItemPackages)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetEmployeeWorkItemListReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    workItemPackages.Select(
                        wip => new XElement("Package",
                            wip.WorkItemEmployeePackage.GetXElement("WorkItemEmployeePackage"),
                            wip.WorkItemEmployeePackage.Employee.GetXElement("Employee"),
                            new XElement("WorkItems",
                                wip.WorkItems.Select(o => o.GetXElement("WorkItem")))
                        )
                    )
                ));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetMakedDetailsReport(DateTime startDate, DateTime endDate, DrawingViewModel drawing)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetMakedDetailsReport.xslt"));
            return GetReport(r => r.GetMakedDetailsReport(startDate, endDate, drawing == null ? (int?)null : drawing.Id), xsl);
        }

        public byte[] GetMaterialMovingFullReport(DateTime startDate, DateTime endDate, MaterialViewModel material)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetMaterialMovingFullReport.xslt"));
            return GetReport(r => r.GetMaterialMovingFullReport(startDate, endDate, material == null ? (int?)null : material.Id), xsl);
        }

        public byte[] GetMaterialMovingRequestReport(DateTime startDate, DateTime endDate, MaterialViewModel material)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetMaterialMovingRequestReport.xslt"));
            return GetReport(r => r.GetMaterialMovingRequestReport(startDate, endDate, material == null ? (int?)null : material.Id), xsl);
        }

        public byte[] GetMaterialMovingShipmentReport(DateTime startDate, DateTime endDate, MaterialViewModel material)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetMaterialMovingShipmentReport.xslt"));
            return GetReport(r => r.GetMaterialMovingShipmentReport(startDate, endDate, material == null ? (int?)null : material.Id), xsl);
        }

        public byte[] GetMaterialMovingWorkItemReport(DateTime startDate, DateTime endDate, MaterialViewModel material)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetMaterialMovingWorkItemReport.xslt"));
            return GetReport(r => r.GetMaterialMovingWorkItemReport(startDate, endDate, material == null ? (int?)null : material.Id), xsl);
        }

        public byte[] GetEquipmentInvoiceReport(RequestViewModel request)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetEquipmentInvoiceReport.xslt"));
            return GetReport(r => new XDocument(new XDeclaration("2.0", "utf8", "true"), new XElement("root", new XElement("set", new XAttribute("name", "Requests"), request.GetXElement("row")))), xsl);
        }

        public byte[] GetM15Report()
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetM15Report.xslt"));
            return GetReport(r => new XDocument(new XDeclaration("2.0", "utf8", "true"), new XElement("root")), xsl);
        }

        public byte[] GetUnfilledWorkItemsReport(DateTime startDate, DateTime endDate)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetUnfilledWorkItemsReport.xslt"));
            return GetReport(r => r.GetUnfilledWorkItemsReport(startDate, endDate), xsl);
        }

        public byte[] GetShavingReport(DateTime startDate, DateTime endDate, List<ShavingRecordViewModel> items)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetShavingReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate), new XAttribute("EndDate", endDate)),
                    new XElement("ShavingRecords",
                        items.Select(o =>
                        {
                            var element = o.GetXElement("ShavingRecord");
                            element.Add(new XAttribute("RowNumber", items.IndexOf(o) + 1));
                            return element;}))));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetRollingReport(DateTime startDate, DateTime endDate, List<RollingRecordViewModel> items)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetRollingReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate), new XAttribute("EndDate", endDate)),
                    new XElement("RollingRecords",
                        items.Select(o =>
                        {
                            var element = o.GetXElement("RollingRecord");
                            element.Add(new XAttribute("RowNumber", items.IndexOf(o) + 1));
                            return element;
                        }))));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetEquipmentPaymentReport(DateTime startDate, DateTime endDate, List<EquipmentPaymentViewModel> items)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetEquipmentPaymentReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate), new XAttribute("EndDate", endDate)),
                    new XElement("EquipmentPayments",
                        items.Select(o =>
                        {
                            var element = o.GetXElement("EquipmentPayment");
                            element.Add(new XAttribute("RowNumber", items.IndexOf(o) + 1));
                            return element;
                        }))));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetMaterialArrivalRecordReport(DateTime startDate, DateTime endDate, List<MaterialArrivalRecordViewModel> items)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetMaterialArrivalRecordReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate), new XAttribute("EndDate", endDate)),
                    new XElement("MaterialArrivalRecords",
                        items.Select(o =>
                        {
                            var element = o.GetXElement("MaterialArrivalRecord");
                            element.Add(new XAttribute("RowNumber", items.IndexOf(o) + 1));
                            return element;
                        }))));
            return GetReport(r => doc, xsl);
        }

        public byte[] GetPaymentReport(DateTime startDate, DateTime endDate, List<PaymentViewModel> items)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetPaymentReport.xslt"));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate), new XAttribute("EndDate", endDate)),
                    new XElement("Payments",
                        items.Select(o =>
                        {
                            var element = o.GetXElement("Payment");
                            element.Add(new XAttribute("RowNumber", items.IndexOf(o) + 1));
                            return element;
                        }))));
            return GetReport(r => doc, xsl);
        }
    }
}