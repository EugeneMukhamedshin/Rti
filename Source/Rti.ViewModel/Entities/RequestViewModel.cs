<<<<<<< HEAD
﻿using System;
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
        public string FullName { get { return string.Format("Счет №{0} от {1:dd.MM.yyyy}г.", Number, RegDate); } }
=======
        public string FullName { get { return string.Format("���� �{0} �� {1:dd.MM.yyyy}�.", Number, RegDate); } }
>>>>>>> origin/develop

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "WorkStartDate")
                OnPropertyChanged("IsWorkStarted");
        }
    }
}