using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.ListViewModel;

namespace Rti.ViewModel
{
    public class MainViewModel : BaseViewModel, IWindowCloser
    {
        public IViewService ViewService { get; set; }

        public RequestViewModel SelectedRequest { get; set; }
        public List<RequestViewModel> Requests { get; set; }

        public DelegateCommand CreateNewRequestCommand { get; set; }
        public DelegateCommand OpenRequestCommand { get; set; }
        public DelegateCommand OpenDictionaryListCommand { get; set; }

        public MainViewModel(IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
            ViewService = viewService;

            CreateNewRequestCommand = new DelegateCommand(
                "Новая заявка",
                o => true,
                o => CreateNewRequest());
            OpenRequestCommand = new DelegateCommand(
                "Открыть заявку",
                o => true,
                o => OpenRequest());
            OpenDictionaryListCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionaryList());
            Requests =
                RepositoryFactory.GetRequestRepository()
                    .GetAll()
                    .Select(o => new RequestViewModel(o, RepositoryFactory))
                    .ToList();
        }

        private void CreateNewRequest()
        {
            var request = new RequestViewModel(null, RepositoryFactory);
            request.RegDate = DateTime.Today;
            request.Number = RepositoryFactory.GetRequestRepository().GetNewRequestNumber();
            request.SaveEntity();
            var editViewModel = new RequestEdit("Новая заявка", request, false, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            if (ViewService.ShowViewDialog(editViewModel) != true)
                request.DeleteEntity();
        }

        private void OpenRequest()
        {
            if (SelectedRequest == null)
                return;
            var editViewModel = new RequestEdit("Заявка", SelectedRequest, false, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            ViewService.ShowViewDialog(editViewModel);
        }

        private void OpenDictionaryList()
        {
            ViewService.ShowViewDialog(new DictionaryList(false, ViewService, RepositoryFactory));
        }

        public Action<BaseViewModel, bool?> CloseWindow { get; set; }
    }
}
