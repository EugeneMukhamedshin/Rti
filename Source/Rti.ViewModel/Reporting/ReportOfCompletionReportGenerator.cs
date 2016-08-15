using System;
using System.IO;
using System.Linq;
using System.Xml.Linq;
using System.Xml.XPath;
using Microsoft.Office.Interop.Excel;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Reporting.Generator;

namespace Rti.ViewModel.Reporting
{
    public class ReportOfCompletionReportGenerator : ReportGenerator
    {
        public void BuildReport(int requestId, IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            var requestModel = repositoryFactory.GetRequestRepository().GetById(requestId);
            if (requestModel == null)
                throw new InvalidOperationException("Заявка не найдена");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var reportItems = repositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(requestId)
                .Select(o => new ReportOfCompletionItemViewModel(o, repositoryFactory)).ToList();
            var fileName = string.Format("Акт выполненных работ по заявке {0} от {1:dd.MM.yyyy}.xls", request.Number, request.RegDate);
            if (!viewService.ShowFileDialog(ref fileName, "Файлы Excel (*.xls)|*.xls", true))
                return;
            var doc = new XDocument(new XDeclaration("2.0", "utf-8", "true"),
                new XElement("root",
                    new XElement("set",
                        new XAttribute("name", "Requests"),
                        request.GetXElement("row")
                        ),
                    new XElement("set",
                        new XAttribute("name", "ReportItems"),
                        reportItems.Where(o => o.Count > 0).Select(o => o.GetXElement("row")))));
            var navigator = doc.CreateNavigator();
            var template =
                File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "completion_report.xslt"));
            var content = XslTransformation(navigator, template);
            var templateFileName = Path.Combine(Path.GetTempPath(), string.Format("{0}.xml", Guid.NewGuid()));
            File.WriteAllBytes(templateFileName, content);
            try
            {
                var application = new Application().AsReleasable();
                var workbooks = application.Workbooks.AsReleasable();
                application.DisplayAlerts = true;
                application.Visible = true;
                application.ScreenUpdating = true;
                var workbook = workbooks.Open(templateFileName).AsReleasable();
                workbook.SaveAs(fileName, XlFileFormat.xlExcel8);
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

    public class ReportOfAcceptanceReportGenerator : ReportGenerator
    {
        public void BuildReport(int requestId, IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            var requestModel = repositoryFactory.GetRequestRepository().GetById(requestId);
            if (requestModel == null)
                throw new InvalidOperationException("Заявка не найдена");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var reportItems = repositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(requestId)
                .Select(o => new ReportOfCompletionItemViewModel(o, repositoryFactory)).ToList();
            var fileName = string.Format("Акт приема передачи оснастки по заявке {0} от {1:dd.MM.yyyy}.xls", request.Number, request.RegDate);
            if (!viewService.ShowFileDialog(ref fileName, "Файлы Excel (*.xls)|*.xls", true))
                return;
            var doc = new XDocument(new XDeclaration("2.0", "utf-8", "true"),
                new XElement("root",
                    new XElement("set",
                        new XAttribute("name", "Requests"),
                        request.GetXElement("row")
                        ),
                    new XElement("set",
                        new XAttribute("name", "ReportItems"),
                        reportItems.Where(o => o.Count > 0).Select(o => o.GetXElement("row")))));
            var navigator = doc.CreateNavigator();
            var template =
                File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "acceptance_report.xslt"));
            var content = XslTransformation(navigator, template);
            var templateFileName = Path.Combine(Path.GetTempPath(), string.Format("{0}.xml", Guid.NewGuid()));
            File.WriteAllBytes(templateFileName, content);
            try
            {
                var application = new Application().AsReleasable();
                var workbooks = application.Workbooks.AsReleasable();
                application.DisplayAlerts = true;
                application.Visible = true;
                application.ScreenUpdating = true;
                var workbook = workbooks.Open(templateFileName).AsReleasable();
                workbook.SaveAs(fileName, XlFileFormat.xlExcel8);
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