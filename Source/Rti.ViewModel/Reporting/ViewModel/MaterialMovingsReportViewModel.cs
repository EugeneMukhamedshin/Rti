using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class MaterialMovingsReportViewModel: XsltReportViewModel
    {
        private enum ReportType
        {
            Full, Request, Shipment, WorkItem, Unknown
        }

        private ReportType _reportType;
        private MaterialViewModel _material;

        public DelegateCommand GenerateFullReportCommand { get; set; }
        public DelegateCommand GenerateRequestReportCommand { get; set; }
        public DelegateCommand GenerateShipmentReportCommand { get; set; }
        public DelegateCommand GenerateWorkItemReportCommand { get; set; }

        public MaterialViewModel Material
        {
            get { return _material; }
            set
            {
                if (Equals(value, _material)) return;
                _material = value;
                OnPropertyChanged();
            }
        }

        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }

        public MaterialMovingsReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            _reportType = ReportType.Unknown;

            GenerateFullReportCommand = new DelegateCommand(o => GenerateReport(ReportType.Full));
            GenerateRequestReportCommand = new DelegateCommand(o => GenerateReport(ReportType.Request));
            GenerateShipmentReportCommand = new DelegateCommand(o => GenerateReport(ReportType.Shipment));
            GenerateWorkItemReportCommand = new DelegateCommand(o => GenerateReport(ReportType.WorkItem));

            MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new MaterialViewModel(o, RepositoryFactory)).ToList());
        }

        private void GenerateReport(ReportType reportType)
        {
            _reportType = reportType;
            GenerateReport();
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            switch (_reportType)
            {
                case ReportType.Full:
                    return reportService.GetMaterialMovingFullReport(StartDate, EndDate, Material);
                case ReportType.Request:
                    return reportService.GetMaterialMovingRequestReport(StartDate, EndDate, Material);
                case ReportType.Shipment:
                    return reportService.GetMaterialMovingShipmentReport(StartDate, EndDate, Material);
                case ReportType.WorkItem:
                    return reportService.GetMaterialMovingWorkItemReport(StartDate, EndDate, Material);
                default:
                    return null;
            }
        }
    }
}
