namespace Rti.ViewModel.Entities
{
    public partial class ContractViewModel
    {
        public string FullNumber { get { return string.Format("{0:yyyy-MM-dd}-{1}", Date, Number); } }

        public string FullDate { get { return string.Format(@"{0:dd MMMM yyyyã.}", Date); } }

    }
}