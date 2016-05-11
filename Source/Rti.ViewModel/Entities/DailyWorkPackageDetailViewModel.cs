namespace Rti.ViewModel.Entities
{
    public partial class DailyWorkPackageDetailViewModel
    {
        public string BatchNumber
        {
            get { return string.Format("{0:dd.MM.yyyy}/{1}", DailyWorkPackage.Date, SortOrder); }
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
            if (propertyName == "DailyWorkPackage" && DailyWorkPackage != null)
                DailyWorkPackage.PropertyChanged += (sender, args) =>
                {
                    if (args.PropertyName == "Date")
                        OnPropertyChanged("BatchNumber");
                };
        }
    }
}