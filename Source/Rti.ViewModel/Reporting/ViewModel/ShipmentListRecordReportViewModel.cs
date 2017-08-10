using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain.ReportEntities;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class ShipmentListReportViewModel : XsltReportViewModel
    {
        private readonly List<ShipmentRow> _items;

        public ShipmentListReportViewModel(string name, IEnumerable<ShipmentRow> items, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _items = items.ToList();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentListReport(StartDate, EndDate, _items);
        }
    }
}