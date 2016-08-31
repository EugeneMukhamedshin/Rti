using Rti.Model;

namespace Rti.ViewModel.Entities
{
    public partial class PaymentViewModel
    {
        public string FullName { get { return string.Format("�{0} �� {1:dd.MM.yyyy}�.", PaymentDocNumber, PaymentDate); } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("PaymentDocNumber", "PaymentDate"))
                OnPropertyChanged("FullName");
        }
    }
}