using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class RequestSpecificationReportViewModel : XsltReportViewModel
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

        public RequestSpecificationReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRequestSpecificationReport(Request);
        }
    }
}