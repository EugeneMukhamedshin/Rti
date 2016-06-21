using System;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using System.Xml.XPath;
using Microsoft.Office.Interop.Excel;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Reporting.Generator;

namespace Rti.ViewModel.Reporting
{
    public class RequestReportGenerator : ReportGenerator
    {
        public void BuildReport(DateTime startDate, DateTime endDate, IRepositoryFactory repositoryFactory)
        {
            var rows = repositoryFactory.GetRequestRepository().GetRequestReport(startDate, endDate);
            var doc = new XDocument(new XDeclaration("2.0", "utf-8", "true"),
                new XElement("root",
                    new XElement("set",
                        new XAttribute("name", "Rows"),
                        rows.Select(o => new XElement("row",
                            new XAttribute("Number", o.Number),
                            new XAttribute("RegDate", o.RegDate),
                            new XAttribute("LeadTime", o.LeadTime.HasValue ? o.LeadTime.ToString() : string.Empty),
                            new XAttribute("ShipDate", o.ShipDate.HasValue ? o.ShipDate.Value.ToString("dd.MM.yyyy") : string.Empty),
                            new XAttribute("Status", o.Status),
                            new XAttribute("LastPaymentDate", o.LastPaymentDate.HasValue ? o.LastPaymentDate.Value.ToString("dd.MM.yyyy") : string.Empty),
                            new XAttribute("LastShipmentDate", o.LastShipmentDate.HasValue ? o.LastShipmentDate.Value.ToString("dd.MM.yyyy") : string.Empty),
                            new XAttribute("EquipmentLeadTime", o.EquipmentLeadTime.HasValue ? o.EquipmentLeadTime.ToString() : string.Empty)))
                        )
                    ));
            var navigator = doc.CreateNavigator();
            var template =
                File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "request_report.xslt"));
            var content = XslTransformation(navigator, template);
            var templateFileName = Path.Combine(Path.GetTempPath(), string.Format("{0}.xml", Guid.NewGuid()));
            File.WriteAllBytes(templateFileName, content);
            try
            {
                var application = new Application().AsReleasable();
                var workbooks = application.Workbooks.AsReleasable();
                workbooks.Open(templateFileName).AsReleasable();
                application.DisplayAlerts = true;
                application.Visible = true;
                application.ScreenUpdating = true;
            }
            catch (Exception ex)
            {
            }
            finally
            {
                ReleasableObjectContext.Release();
            }
        }
    }
}