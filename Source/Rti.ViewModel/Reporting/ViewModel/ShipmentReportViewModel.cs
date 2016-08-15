using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
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
}