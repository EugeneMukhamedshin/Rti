namespace Rti.ViewModel.Entities
{
    public partial class RequestViewModel
    {
        public string FullName { get { return string.Format("Счет №{0} от {1:dd.MM.yyyy}г.", Number, RegDate); } }
    }
}