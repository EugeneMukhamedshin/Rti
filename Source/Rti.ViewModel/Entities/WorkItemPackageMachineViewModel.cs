namespace Rti.ViewModel.Entities
{
    partial class WorkItemPackageMachineViewModel
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