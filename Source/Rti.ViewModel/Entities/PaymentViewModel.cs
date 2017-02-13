using Rti.Model;

namespace Rti.ViewModel.Entities
{
    public partial class PaymentViewModel
    {
        private string _shipmentDates;
        private decimal _shipmentSum;
        public string FullName { get { return string.Format("�{0} �� {1:dd.MM.yyyy}�.", PaymentDocNumber, PaymentDate); } }

        public string ShipmentDates
        {
            get { return _shipmentDates; }
            set
            {
                _shipmentDates = value; 
                OnPropertyChanged();
            }
        }

        public decimal ShipmentSum
        {
            get { return _shipmentSum; }
            set { _shipmentSum = value;
                OnPropertyChanged();
            }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("PaymentDocNumber", "PaymentDate"))
                OnPropertyChanged("FullName");
        }
    }
}