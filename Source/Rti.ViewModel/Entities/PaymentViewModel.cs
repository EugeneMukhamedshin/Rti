<<<<<<< HEAD
ï»¿namespace Rti.ViewModel.Entities
{
    public partial class PaymentViewModel
    {
        public string FullName { get { return string.Format("â„–{0} Ð¾Ñ‚ {1:dd.MM.yyyy}Ð³.", PaymentDocNumber, PaymentDate); } }
=======
namespace Rti.ViewModel.Entities
{
    public partial class PaymentViewModel
    {
        public string FullName { get { return string.Format("¹{0} îò {1:dd.MM.yyyy}ã.", PaymentDocNumber, PaymentDate); } }
>>>>>>> origin/develop

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("PaymentDocNumber", "PaymentDate"))
                OnPropertyChanged("FullName");
        }
    }
}