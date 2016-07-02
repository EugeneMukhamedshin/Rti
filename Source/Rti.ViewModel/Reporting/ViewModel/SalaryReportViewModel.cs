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