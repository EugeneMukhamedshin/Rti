<<<<<<< HEAD
﻿using Rti.Model.Repository.Interfaces;
=======
using Rti.Model.Repository.Interfaces;
>>>>>>> origin/develop

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class ShipmentUniversalDocumentReportViewModel : ShipmentReportViewModel
    {
        public ShipmentUniversalDocumentReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetShipmentUniversalDocumentReport(Shipment);
        }
    }
}