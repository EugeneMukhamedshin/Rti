namespace Rti.ViewModel.Entities
{
    public partial class RequestViewModel
    {
        public string FullName { get { return string.Format("№{0} от {1: dd.MM.yyyy}г.", Number, RegDate); } }
    }
}