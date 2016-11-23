using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain.ReportEntities;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class RequestList: BaseViewModel
    {
        private readonly IViewService _viewService;
        private RequestsReportRow _selectedItem;
        private ObservableCollection<RequestsReportRow> _items;
        private DateTime _startDate;
        private DateTime _endDate;

        public ObservableCollection<RequestsReportRow> Items
        {
            get { return _items; }
            set
            {
                if (Equals(value, _items)) return;
                _items = value;
                OnPropertyChanged();
            }
        }

        private List<RequestsReportRow> _requests = new List<RequestsReportRow>();
        private bool _showShippedRequests;
        private bool _showNotShippedRequests;

        public RequestsReportRow SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                if (Equals(value, _selectedItem)) return;
                _selectedItem = value;
                OnPropertyChanged();
                EditRequestCommand.RequeryCanExecute();
                DeleteRequestCommand.RequeryCanExecute();
            }
        }

        public RequestList(IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
            _viewService = viewService;
            Items = new ObservableCollection<RequestsReportRow>();

            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            AddRequestCommand = new DelegateCommand("", o => true, o => AddRequest());
            DeleteRequestCommand = new DelegateCommand("", o => SelectedItem != null, o => DeleteRequest());
            EditRequestCommand = new DelegateCommand("", o => SelectedItem != null, o => EditRequest());

            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void EditRequest()
        {
            if (SelectedItem == null)
                return;
            var request = RepositoryFactory.GetRequestRepository().GetById(SelectedItem.Id);
            var view = new RequestEdit(string.Format("Заявка №{0} от {1:dd.MM.yyyy}г.", request.Number, request.RegDate), new RequestViewModel(request, RepositoryFactory), request.WorkStartDate != null, _viewService, RepositoryFactory);
            view.Refresh();
            _viewService.ShowViewDialog(view);
        }

        private void DeleteRequest()
        {
            if (SelectedItem == null)
                return;
            if (!_viewService.ShowConfirmation(new MessageViewModel("Удаление", "Подтвердите удаление заявки")))
                return;
            var item = SelectedItem;
            var request = RepositoryFactory.GetRequestRepository().GetById(item.Id);
            request.IsDeleted = true;
            RepositoryFactory.GetRequestRepository().Update(request);

            Items.Remove(item);
        }

        private void AddRequest()
        {
            var view = new RequestEdit("Новая заявка", new RequestViewModel(null, RepositoryFactory), false, _viewService, RepositoryFactory);
            view.Refresh();
            _viewService.ShowViewDialog(view);
            Refresh();
        }

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(GetItems, res =>
            {
                _requests = new List<RequestsReportRow>(res);
                SetItems();
            });
        }

        private void SetItems()
        {
            Items =
                new ObservableCollection<RequestsReportRow>(
                    _requests.Where(
                        r =>
                            // показываем отгруженные
                            ShowShippedRequests && r.Status == RequestStatus.Shipped ||
                            // показываем неотгруженные
                            ShowNotShippedRequests && r.Status != RequestStatus.Shipped ||
                            // если ничего не выбрано, показываем весь список
                            (!ShowShippedRequests && !ShowNotShippedRequests)));
        }

        public bool ShowNotShippedRequests
        {
            get { return _showNotShippedRequests; }
            set
            {
                if (value == _showNotShippedRequests) return;
                _showNotShippedRequests = value;
                OnPropertyChanged();
                SetItems();
            }
        }

        public bool ShowShippedRequests
        {
            get { return _showShippedRequests; }
            set
            {
                if (value == _showShippedRequests) return;
                _showShippedRequests = value;
                OnPropertyChanged();
                SetItems();
            }
        }

        private IEnumerable<RequestsReportRow> GetItems()
        {
            return RepositoryFactory.GetRequestRepository().GetRequestReport(StartDate, EndDate).OrderByDescending(o => o.RegDate);
        }

        public DateTime EndDate
        {get { return _endDate; }
            set
            {
                if (value.Equals(_endDate)) return;
                _endDate = value;
                OnPropertyChanged();
            }
        }

        public DateTime StartDate
        {
            get { return _startDate; }
            set
            {
                if (value.Equals(_startDate)) return;
                _startDate = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand RefreshCommand { get; set; }
        public DelegateCommand AddRequestCommand { get; set; }
        public DelegateCommand DeleteRequestCommand { get; set; }
        public DelegateCommand EditRequestCommand { get; set; }
    }
}
