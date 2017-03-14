using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class ShavingRecordReportViewModel : XsltReportViewModel
    {
        private readonly List<ShavingRecordViewModel> _items;

        public ShavingRecordReportViewModel(string name, IEnumerable<ShavingRecordViewModel> items, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _items = items.ToList();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShavingReport(StartDate, EndDate, _items);
        }
    }
}