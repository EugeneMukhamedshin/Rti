using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class EquipmentInvoiceReportViewModel : XsltReportViewModel
    {
        public RequestViewModel Request { get; set; }

        public EquipmentInvoiceReportViewModel(string name, RequestViewModel request, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            Request = request;
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetEquipmentInvoiceReport(Request);
        }
    }
}