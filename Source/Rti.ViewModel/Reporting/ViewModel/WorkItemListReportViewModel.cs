using System;
using System.Collections.Generic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class WorkItemListReportViewModel : XsltReportViewModel
    {
        public List<WorkItemViewModel> WorkItems { get; set; }

        public WorkItemListReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetWorkItemListReport(WorkItems, WorkItemPackage);
        }

        public WorkItemPackageViewModel WorkItemPackage { get; set; }
    }
}