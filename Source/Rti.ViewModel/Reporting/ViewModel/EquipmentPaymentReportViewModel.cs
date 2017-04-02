using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class EquipmentPaymentReportViewModel : XsltReportViewModel
    {
        private readonly List<EquipmentPaymentViewModel> _items;

        public EquipmentPaymentReportViewModel(string name, IEnumerable<EquipmentPaymentViewModel> items, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _items = items.ToList();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetEquipmentPaymentReport(StartDate, EndDate, _items);
        }
    }
}