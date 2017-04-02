using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class RollingRecordReportViewModel : XsltReportViewModel
    {
        private readonly List<RollingRecordViewModel> _items;

        public RollingRecordReportViewModel(string name, IEnumerable<RollingRecordViewModel> items, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _items = items.ToList();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRollingReport(StartDate, EndDate, _items);
        }
    }
}