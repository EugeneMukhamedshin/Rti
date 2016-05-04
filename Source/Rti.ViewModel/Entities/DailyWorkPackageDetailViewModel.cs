namespace Rti.ViewModel.Entities
{
    public partial class DailyWorkPackageDetailViewModel
    {
        public string BatchNumber
        {
            get { return string.Format("{0:dd.MM.yyyy}/{1}", DailyWorkPackage.Date, SortOrder); }
        }
    }
}