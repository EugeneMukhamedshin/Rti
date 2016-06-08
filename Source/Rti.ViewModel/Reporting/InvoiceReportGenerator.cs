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
    public class InvoiceReportGenerator: ReportGenerator
    {
        public void BuildReport(int requestId, IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            var requestModel = repositoryFactory.GetRequestRepository().GetById(requestId);
            if (requestModel == null)
                throw new InvalidOperationException("Заявка не найдена");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var requestDetails = repositoryFactory.GetRequestDetailRepository().GetByRequestId(requestId)
                .Select(o => new RequestDetailViewModel(o, repositoryFactory)).OrderBy(o => o.SortOrder).ToList();
            var constants = repositoryFactory.GetConstantRepository().GetActual();
            var fileName = string.Format("Счет {0} от {1:dd.MM.yyyy}.xls", request.Number, request.InvoiceDate);
            if (!viewService.ShowFileDialog(ref fileName, "Файлы Excel (*.xls)|*.xls", true))
                return;
            decimal sum = 0;
            decimal nds = 0;
            decimal sumWithNds = 0;
            decimal count = 0;
            foreach (var o in requestDetails)
            {
                sum += o.Sum;
                nds += Math.Round(o.Sum * constants.Nds.ToDecimal() / 100, 2);
            }
            sumWithNds = sum + nds;
            count = requestDetails.Count;
            var doc = new XDocument(new XDeclaration("2.0", "utf-8", "true"),
                new XElement("root",
                    new XElement("set",
                        new XAttribute("name", "Requests"),
                        request.GetXElement("row")
                        ),
                    new XElement("set",
                        new XAttribute("name", "RequestDetails"),
                        requestDetails.Select(o => o.GetXElement("row"))
                        ),
                    new XElement("set",
                        new XAttribute("name", "Summary"),
                        new XElement("row",
                            new XAttribute("Sum", sum),
                            new XAttribute("Nds", nds),
                            new XAttribute("SumWithNds", sumWithNds),
                            new XAttribute("Count", count))
                        )
                    ));
            var navigator = doc.CreateNavigator();
            var template =
                File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "invoice.xslt"));
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
