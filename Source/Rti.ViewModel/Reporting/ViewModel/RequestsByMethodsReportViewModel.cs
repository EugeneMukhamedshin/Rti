using System;
using System.IO;
using Microsoft.Office.Interop.Excel;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

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
                application.DisplayAlerts = true;
                application.Visible = true;
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

    public class UsedMaterialsReportViewModel : XsltReportViewModel
    {
        private MaterialViewModel _material;

        public MaterialViewModel Material
        {
            get { return _material; }
            set
            {
                if (Equals(value, _material)) return;
                _material = value;
                OnPropertyChanged();
            }
        }

        public UsedMaterialsReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetUsedMaterialsReport(StartDate, EndDate, Material);
        }
    }

    public class RequestDirectExpencesReportViewModel : XsltReportViewModel
    {
        private RequestViewModel _request;

        public RequestViewModel Request
        {
            get { return _request; }
            set
            {
                if (Equals(value, _request)) return;
                _request = value;
                OnPropertyChanged();
            }
        }

        public RequestDirectExpencesReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRequestDirectExpencesReport(StartDate, EndDate, Request);
        }
    }

    public class DrawingShipmentsReportViewModel : XsltReportViewModel
    {
        private DrawingViewModel _drawing;

        public DrawingViewModel Drawing
        {
            get { return _drawing; }
            set
            {
                if (Equals(value, _drawing)) return;
                _drawing = value;
                OnPropertyChanged();
            }
        }

        public DrawingShipmentsReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetDrawingShipmentsReport(StartDate, EndDate, Drawing);
        }
    }

    public class RequestsByMethodsReportViewModel : XsltReportViewModel, IClosable
    {
        public RequestsByMethodsReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRequestsByMethodsReport(StartDate, EndDate);
        }
    }
}
