using System;
using System.Collections.Generic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class SalaryReportViewModel : XsltReportViewModel
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

        public SalaryReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetSalaryReport(StartDate, EndDate, Employee);
        }
    }
    public class RequestSpecificationReportViewModel : XsltReportViewModel
    {
        private RequestViewModel _request;

        public RequestViewModel Request
        {
            get { return _request; }
            set
            {
                if (Equals(value, _request)) return;
                _request = value;
                OnPropertyChanged();
            }
        }

        public RequestSpecificationReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRequestSpecificationReport(Request);
        }
    }

    public class DrawingFlowsheetReportViewModel : XsltReportViewModel
    {
        private DrawingViewModel _drawing;

        public DrawingViewModel Drawing
        {
            get { return _drawing; }
            set
            {
                if (Equals(value, _drawing)) return;
                _drawing = value;
                OnPropertyChanged();
            }
        }

        public DrawingFlowsheetReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetDrawingFlowsheetReport(Drawing);
        }
    }

    public class WorkItemListReportViewModel : XsltReportViewModel
    {
        public List<WorkItemViewModel> WorkItems { get; set; }

        public WorkItemListReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetWorkItemListReport(WorkItems, Date);
        }

        public DateTime Date { get; set; }
    }
    public class EmployeeWorkItemListReportViewModel : XsltReportViewModel
    {
        public EmployeeViewModel Employee { get; set; }
        
        public List<WorkItemViewModel> WorkItems { get; set; }

        public EmployeeWorkItemListReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetEmployeeWorkItemListReport(WorkItems, Employee, WorkItemPackage);
        }

        public DateTime Date { get; set; }
        public WorkItemPackageViewModel WorkItemPackage { get; set; }
    }

    public class DrawingCalculationReportViewModel : XsltReportViewModel
    {
        private DrawingViewModel _drawing;

        public DrawingViewModel Drawing
        {
            get { return _drawing; }
            set
            {
                if (Equals(value, _drawing)) return;
                _drawing = value;
                OnPropertyChanged();
            }
        }

        public CalculationViewModel Calculation { get; set; }

        public DrawingCalculationReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetDrawingCalculationReport(Drawing, Calculation);
        }
    }

    public abstract class ShipmentReportViewModel : XsltReportViewModel
    {
        private ShipmentViewModel _shipment;

        public ShipmentReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
        }

        public ShipmentViewModel Shipment
        {
            get { return _shipment; }
            set
            {
                if (Equals(value, _shipment)) return;
                _shipment = value;
                OnPropertyChanged();
            }
        }
    }

    public class ShipmentTorg12ReportViewModel : ShipmentReportViewModel
    {
        public ShipmentTorg12ReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentTorg12Report(Shipment);
        }
    }

    public class ShipmentFactureReportViewModel : ShipmentReportViewModel
    {
        public ShipmentFactureReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentFactureReport(Shipment);
        }
    }

    public class ShipmentTransportReportViewModel : ShipmentReportViewModel
    {
        public ShipmentTransportReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentTransportReport(Shipment);
        }
    }

    public class ShipmentPassportReportViewModel : ShipmentReportViewModel
    {
        public ShipmentPassportReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentPassportReport(Shipment);
        }
    }

    public class ShipmentUniversalDocumentReportViewModel : ShipmentReportViewModel
    {
        public ShipmentUniversalDocumentReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentUniversalDocumentReport(Shipment);
        }
    }
}