<<<<<<< HEAD
﻿using Rti.Model.Repository.Interfaces;
=======
using Rti.Model.Repository.Interfaces;
>>>>>>> origin/develop
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class ShipmentDirectExpencesReportViewModel : XsltReportViewModel
    {
        private ShipmentViewModel _shipment;

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

        public ShipmentDirectExpencesReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentDirectExpencesReport(StartDate, EndDate, Shipment);
        }
    }
}