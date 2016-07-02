using System;
using System.IO;
using Microsoft.Office.Interop.Excel;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public abstract class XsltReportViewModel : ByPeriodReportViewModel
    {
        public string XsltPath { get; set; }

        public XsltReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, fileName)
        {
            XsltPath = xsltPath;
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        protected override void DoGenerateReport()
        {
            var reportService = new ReportService(RepositoryFactory, XsltPath);
            var report = GetReport(reportService);
            var templateFileName = Path.Combine(Path.GetTempPath(), string.Format("{0}.xml", Guid.NewGuid()));
            File.WriteAllBytes(templateFileName, report);
            try
            {
                var application = new Application().AsReleasable();
                var workbooks = application.Workbooks.AsReleasable();
                application.DisplayAlerts = true;application.Visible = true;
                application.ScreenUpdating = true;
                var workbook = workbooks.Open(templateFileName).AsReleasable();
                workbook.SaveAs(FileName, XlFileFormat.xlExcel8);
            }
            catch (Exception ex)
            {
            }
            finally
            {
                ReleasableObjectContext.Release();
            }
        }

        protected abstract byte[] GetReport(ReportService reportService);
    }
}