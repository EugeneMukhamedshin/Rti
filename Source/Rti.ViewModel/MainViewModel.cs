using System;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.ListViewModel;

namespace Rti.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public IViewService ViewService { get; set; }

        public DelegateCommand CreateNewRequestCommand { get; set; }
        public DelegateCommand OpenDictionaryListCommand { get; set; }

        public MainViewModel(IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
            ViewService = viewService;

            CreateNewRequestCommand = new DelegateCommand(
                "Новая заявка",
                o => true,
                o => CreateNewRequest());
            OpenDictionaryListCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionaryList());
        }

        private void CreateNewRequest()
        {
            var request = new RequestViewModel(null, RepositoryFactory);
            request.RegDate = DateTime.Today;
            request.Number = RepositoryFactory.GetRequestRepository().GetNewRequestNumber();
            request.SaveEntity();
            var editViewModel = new RequestEdit("Новая заявка", request, false, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(editViewModel) != true)
                request.DeleteEntity();
            else
                request.SaveEntity();
        }

        private void OpenDictionaryList()
        {
            ViewService.ShowViewDialog(new DictionaryList(false, ViewService, RepositoryFactory));
        }
    }
}
