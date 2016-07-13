using System;
using System.Collections.Generic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class EmployeeWorkItemListReportViewModel : XsltReportViewModel
    {
        public EmployeeViewModel Employee { get; set; }
        
        public List<WorkItemViewModel> WorkItems { get; set; }

        public EmployeeWorkItemListReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetEmployeeWorkItemListReport(WorkItems, Employee, WorkItemEmployeePackage);
        }

        public DateTime Date { get; set; }
        public WorkItemEmployeePackageViewModel WorkItemEmployeePackage { get; set; }
    }
}