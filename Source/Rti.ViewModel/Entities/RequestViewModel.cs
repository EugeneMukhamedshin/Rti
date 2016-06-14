using System;

namespace Rti.ViewModel.Entities
{
    public partial class RequestViewModel
    {
        public bool IsWorkStarted
        {
            get { return WorkStartDate.HasValue; }
            set
            {
                if (value)
                    WorkStartDate = DateTime.Today;
                else
                    WorkStartDate = null;
            }
        }

        public string FullName { get { return string.Format("���� �{0} �� {1:dd.MM.yyyy}�.", Number, RegDate); } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "WorkStartDate")
                OnPropertyChanged("IsWorkStarted");
        }
    }
}