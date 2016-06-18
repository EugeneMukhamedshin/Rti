using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class RequestsByMethodsReportViewModel : XsltReportViewModel{
        public RequestsByMethodsReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRequestsByMethodsReport(StartDate, EndDate);
        }
    }
}
