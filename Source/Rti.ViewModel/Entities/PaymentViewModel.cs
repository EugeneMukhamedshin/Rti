<<<<<<< HEAD
﻿namespace Rti.ViewModel.Entities
{
    public partial class PaymentViewModel
    {
        public string FullName { get { return string.Format("№{0} от {1:dd.MM.yyyy}г.", PaymentDocNumber, PaymentDate); } }
=======
namespace Rti.ViewModel.Entities
{
    public partial class PaymentViewModel
    {
        public string FullName { get { return string.Format("�{0} �� {1:dd.MM.yyyy}�.", PaymentDocNumber, PaymentDate); } }
>>>>>>> origin/develop

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("PaymentDocNumber", "PaymentDate"))
                OnPropertyChanged("FullName");
        }
    }
}