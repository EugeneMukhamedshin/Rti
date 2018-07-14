using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class DrawingShipmentsReportViewModel : DrawingReportViewModel
    {
        private ContragentViewModel _customer;

        public ContragentViewModel Customer
        {
            get { return _customer; }
            set
            {
                if (Equals(value, _customer)) return;
                _customer = value;
                OnPropertyChanged();
            }
        }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public DrawingShipmentsReportViewModel(string name, IViewService viewService,
            IRepositoryFactory repositoryFactory, string xsltPath, string fileName)
            : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
        }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetDrawingShipmentsReport(StartDate, EndDate, Drawing, Customer);
        }
    }
}