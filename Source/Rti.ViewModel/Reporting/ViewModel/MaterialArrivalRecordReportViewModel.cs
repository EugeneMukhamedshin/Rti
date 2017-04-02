using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class MaterialArrivalRecordReportViewModel : XsltReportViewModel
    {
        private readonly List<MaterialArrivalRecordViewModel> _items;

        public MaterialArrivalRecordReportViewModel(string name, IEnumerable<MaterialArrivalRecordViewModel> items, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _items = items.ToList();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetMaterialArrivalRecordReport(StartDate, EndDate, _items);
        }
    }
}