using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class M15ReportViewModel : XsltReportViewModel
    {
        public M15ReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetM15Report();
        }
    }
}