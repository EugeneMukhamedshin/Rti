using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class ShortSalaryReportViewModel : XsltReportViewModel
    {
        private EmployeeViewModel _employee;

        public EmployeeViewModel Employee
        {
            get { return _employee; }
            set
            {
                if (Equals(value, _employee)) return;
                _employee = value;
                OnPropertyChanged();
            }
        }

        public ShortSalaryReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            EmployeesSource = new Lazy<List<EmployeeViewModel>>(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().Select(m => new EmployeeViewModel(m, RepositoryFactory)).ToList());
        }

        public Lazy<List<EmployeeViewModel>> EmployeesSource { get; set; }


        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShortSalaryReport(StartDate, EndDate, Employee);
        }
    }
}