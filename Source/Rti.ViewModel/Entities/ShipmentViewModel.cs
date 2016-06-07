namespace Rti.ViewModel.Entities
{
    public partial class ShipmentViewModel
    {
        public string FullNumber
        {
            get
            {
                return string.Format("{0}{1}", SortOrder, IsReplace ? "�" : IsAddition ? "�" : string.Empty);
            }
        }

        public string CarModel { get { return Driver == null ? null : Driver.CarModel; } }

        public string CarNumber { get { return Driver == null ? null : Driver.Number; } }

        public string DriverDocument { get { return Driver == null ? null : Driver.Document; } }

        public string CargoType { get { return "���"; } }

        public string Documents { get { return "�������"; } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("SortOrder", "IsReplace", "IsAddition"))
                OnPropertyChanged("FullNumber");
        }
    }
}