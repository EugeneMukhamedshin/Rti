<<<<<<< HEAD
ï»¿using System;
=======
using System;
>>>>>>> origin/develop
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
<<<<<<< HEAD
                throw new InvalidOperationException("Ð—Ð°ÑÐ²ÐºÐ° Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð°");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var reportItems = repositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(requestId)
                .Select(o => new ReportOfCompletionItemViewModel(o, repositoryFactory)).ToList();
            var fileName = string.Format("ÐÐºÑ‚ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð½Ñ‹Ñ… Ñ€Ð°Ð±Ð¾Ñ‚ Ð¿Ð¾ Ð·Ð°ÑÐ²ÐºÐµ {0} Ð¾Ñ‚ {1:dd.MM.yyyy}.xls", request.Number, request.RegDate);
            if (!viewService.ShowFileDialog(ref fileName, "Ð¤Ð°Ð¹Ð»Ñ‹ Excel (*.xls)|*.xls", true))
=======
                throw new InvalidOperationException("Çàÿâêà íå íàéäåíà");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var reportItems = repositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(requestId)
                .Select(o => new ReportOfCompletionItemViewModel(o, repositoryFactory)).ToList();
            var fileName = string.Format("Àêò âûïîëíåííûõ ðàáîò ïî çàÿâêå {0} îò {1:dd.MM.yyyy}.xls", request.Number, request.RegDate);
            if (!viewService.ShowFileDialog(ref fileName, "Ôàéëû Excel (*.xls)|*.xls", true))
>>>>>>> origin/develop
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
<<<<<<< HEAD
                throw new InvalidOperationException("Ð—Ð°ÑÐ²ÐºÐ° Ð½Ðµ Ð½Ð°Ð¹Ð´ÐµÐ½Ð°");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var reportItems = repositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(requestId)
                .Select(o => new ReportOfCompletionItemViewModel(o, repositoryFactory)).ToList();
            var fileName = string.Format("ÐÐºÑ‚ Ð¿Ñ€Ð¸ÐµÐ¼Ð° Ð¿ÐµÑ€ÐµÐ´Ð°Ñ‡Ð¸ Ð¾ÑÐ½Ð°ÑÑ‚ÐºÐ¸ Ð¿Ð¾ Ð·Ð°ÑÐ²ÐºÐµ {0} Ð¾Ñ‚ {1:dd.MM.yyyy}.xls", request.Number, request.RegDate);
            if (!viewService.ShowFileDialog(ref fileName, "Ð¤Ð°Ð¹Ð»Ñ‹ Excel (*.xls)|*.xls", true))
=======
                throw new InvalidOperationException("Çàÿâêà íå íàéäåíà");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var reportItems = repositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(requestId)
                .Select(o => new ReportOfCompletionItemViewModel(o, repositoryFactory)).ToList();
            var fileName = string.Format("Àêò ïðèåìà ïåðåäà÷è îñíàñòêè ïî çàÿâêå {0} îò {1:dd.MM.yyyy}.xls", request.Number, request.RegDate);
            if (!viewService.ShowFileDialog(ref fileName, "Ôàéëû Excel (*.xls)|*.xls", true))
>>>>>>> origin/develop
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