<<<<<<< HEAD
ï»¿using System;
=======
using System;
>>>>>>> origin/develop

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

<<<<<<< HEAD
        public string FullName { get { return string.Format("Ð¡Ñ‡ÐµÑ‚ â„–{0} Ð¾Ñ‚ {1:dd.MM.yyyy}Ð³.", Number, RegDate); } }
=======
        public string FullName { get { return string.Format("Ñ÷åò ¹{0} îò {1:dd.MM.yyyy}ã.", Number, RegDate); } }
>>>>>>> origin/develop

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "WorkStartDate")
                OnPropertyChanged("IsWorkStarted");
        }
    }
}