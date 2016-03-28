using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.ListViewModel;

namespace Rti.ViewModel
{
    public class MainViewModel: BaseViewModel
    {
        public IViewService ViewService { get; set; }
        public DictionaryList DictionaryList { get; set; }

        public MainViewModel(IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
            ViewService = viewService;
            DictionaryList = new DictionaryList(false, ViewService, repositoryFactory);
        }
    }
}
