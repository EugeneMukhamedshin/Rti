<<<<<<< HEAD
﻿namespace Rti.ViewModel.Entities
=======
namespace Rti.ViewModel.Entities
>>>>>>> origin/develop
{
    partial class WorkItemEmployeePackageMachineViewModel
    {
        public int FreeTime { get { return FullWorkingTime - PackageWorkingTime; } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("FullWorkingTime", "PackageWorkingTime"))
                OnPropertyChanged("FreeTime");
        }
    }
}