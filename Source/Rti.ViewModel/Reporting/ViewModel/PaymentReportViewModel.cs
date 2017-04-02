using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class PaymentReportViewModel : XsltReportViewModel
    {
        private readonly List<PaymentViewModel> _items;

        public PaymentReportViewModel(string name, IEnumerable<PaymentViewModel> items, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _items = items.ToList();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetPaymentReport(StartDate, EndDate, _items);
        }
    }
}