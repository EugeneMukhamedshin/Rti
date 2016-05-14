using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reports;

namespace Rti.ViewModel.EditViewModel
{
    public class RequestEdit : EditEntityViewModel<RequestViewModel, Request>
    {
        private RequestDetailViewModel _selectedRequestDetail;
        private List<RequestDetailViewModel> _deletedDetails;
        private ObservableCollection<RequestDetailViewModel> _requestDetails;

        public ObservableCollection<RequestDetailViewModel> RequestDetails
        {
            get { return _requestDetails; }
            set
            {
                if (Equals(value, _requestDetails)) return;
                _requestDetails = value;
                OnPropertyChanged();
            }
        }

        public RequestDetailViewModel SelectedRequestDetail
        {
            get { return _selectedRequestDetail; }
            set
            {
                if (Equals(value, _selectedRequestDetail)) return;
                _selectedRequestDetail = value;
                RemoveRequestDetailCommand.RequeryCanExecute();
                OnPropertyChanged();
            }
        }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }
        //public Lazy<List<DetailViewModel>> DetailsSource { get; set; }
        //public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }
        //public Lazy<List<GroupViewModel>> GroupsSource { get; set; }
        public Lazy<List<DrawingViewModel>> DrawingsSource { get; set; }

        public RequestEdit(string name, RequestViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            _deletedDetails = new List<RequestDetailViewModel>();

            AddRequestDetailCommand = new DelegateCommand(
                "Добавить строку",
                o => true,
                o => AddRequestDetail());
            RemoveRequestDetailCommand = new DelegateCommand(
                "Удалить строку",
                o => SelectedRequestDetail != null,
                o => RemoveRequestDetail());
            GenerateInvoiceCommand = new DelegateCommand(
                "Текущий счет",
                o => true,
                o => new InvoiceReport().BuildReport(entity.Id, RepositoryFactory));
        }

        public DelegateCommand AddRequestDetailCommand { get; set; }
        public DelegateCommand RemoveRequestDetailCommand { get; set; }
        public DelegateCommand GenerateInvoiceCommand { get; set; }

        private void AddRequestDetail()
        {
            var newDetail = new RequestDetailViewModel(null, RepositoryFactory)
            {
                Request = Source,
                SortOrder = RequestDetails.Any() ? RequestDetails.Max(item => item.SortOrder) + 1 : 1
            };
            RequestDetails.Add(newDetail);
        }

        private void RemoveRequestDetail()
        {
            _deletedDetails.Add(SelectedRequestDetail);
            RequestDetails.Remove(SelectedRequestDetail);
        }

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(() => RepositoryFactory.GetRequestDetailRepository()
                .GetByRequestId(Source.Id)
                .OrderBy(o => o.SortOrder)
                .Select(m => new RequestDetailViewModel(m, RepositoryFactory)),
                res => RequestDetails = new ObservableCollection<RequestDetailViewModel>(res));

            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(0).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllActive().OrderBy(o => o.Id).Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList());
            //GroupsSource = new Lazy<List<GroupViewModel>>(() => RepositoryFactory.GetGroupRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new GroupViewModel(o, RepositoryFactory)).ToList());
            //MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new MaterialViewModel(o, RepositoryFactory)).ToList());
            //DetailsSource = new Lazy<List<DetailViewModel>>(() => RepositoryFactory.GetDetailRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new DetailViewModel(o, RepositoryFactory)).ToList());
        }

        protected override void DoSave()
        {
            base.DoSave();
            foreach (var deletedDetail in _deletedDetails)
            {
                deletedDetail.DeleteEntity();
            }
            _deletedDetails.Clear();
            foreach (var detail in RequestDetails)
            {
                if (detail.IsNewEntity || detail.IsChanged)
                    detail.SaveEntity();
            }
        }

        protected override bool DoValidate()
        {
            if (Entity.Customer == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан заказчик"));
                return false;
            }
            foreach (var requestDetail in RequestDetails)
            {
                if (requestDetail.Drawing == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан чертеж"));
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
