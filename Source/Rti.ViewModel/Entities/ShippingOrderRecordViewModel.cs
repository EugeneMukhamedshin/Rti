namespace Rti.ViewModel.Entities
{
    public partial class ShippingOrderRecordViewModel
    {
        public string BatchNumber { get { return string.Format("{0:dd.MM.yyyy}/{1}", OrderDate, SortOrder); } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("OrderDate", "SortOrder"))
                OnPropertyChanged("BatchNumber");
        }
    }
}