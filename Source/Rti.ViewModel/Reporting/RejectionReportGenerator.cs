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
    public class RejectionReportGenerator : ReportGenerator
    {
        public void BuildReport(DateTime startDate, DateTime endDate, int? employeeId, IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            var rows = repositoryFactory.GetWorkItemRequestDetailRepository().GetRejectionReport(startDate, endDate, employeeId);
            var doc = new XDocument(new XDeclaration("2.0", "utf-8", "true"),
                new XElement("root",
                    new XElement("set",
                        new XAttribute("name", "Rows"),
                        rows.Select(o => new XElement("row",
                            new XAttribute("EmployeeName", o.EmployeeName),
                            new XAttribute("RequestNumber", o.RequestNumber),
                            new XAttribute("RequestRegDate", o.RequestRegDate),
                            new XAttribute("DrawingName", o.DrawingName),
                            new XAttribute("DetailName", o.DetailName),
                            new XAttribute("RejectedCount", o.RejectedCount),
                            new XAttribute("MaterialName", o.MaterialName),
                            new XAttribute("RejectedMass", o.RejectedMass),
                            new XAttribute("RejectedPrice", o.RejectedPrice),
                            new XAttribute("Expences", o.Expences)))
                        )
                    ));
            var navigator = doc.CreateNavigator();
            var template =
                File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "rejection_report.xslt"));
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