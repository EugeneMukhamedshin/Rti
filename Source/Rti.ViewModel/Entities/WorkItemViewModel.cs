namespace Rti.ViewModel.Entities
{
    public partial class WorkItemViewModel
    {
        public string BatchNumber
        {
            get { return string.Format("{0:dd.MM.yyyy}/{1}", WorkDate, SortOrder); }
        }

        public decimal? Sum
        {
            get { return Drawing != null && Drawing.PlanCalculation != null ? DoneCount * Drawing.PlanCalculation.Summary : null; }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("DoneCount", "Drawing"))
                OnPropertyChanged("Sum");
            if (propertyName == "Date")
                OnPropertyChanged("BatchNumber");
        }
    }
}