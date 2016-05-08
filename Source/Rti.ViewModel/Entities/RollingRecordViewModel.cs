namespace Rti.ViewModel.Entities
{
    partial class RollingRecordViewModel
    {
        public string BatchNumber { get { return string.Format("{0:dd.MM.yyyy}/{1}", RollingDate, SortOrder); } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("RollingDate", "SortOrder"))
                OnPropertyChanged("BatchNumber");
        }
    }
}