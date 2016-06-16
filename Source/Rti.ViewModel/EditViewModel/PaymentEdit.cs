using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class PaymentEdit : EditEntityViewModel<PaymentViewModel, Payment>
    {
        private ObservableCollection<RequestViewModel> _requestsSource;

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(() => RepositoryFactory.GetRequestRepository().GetUnpaid().Select(o => new RequestViewModel(o, RepositoryFactory)).ToList(),
                res => RequestsSource = new ObservableCollection<RequestViewModel>(res));
        }

        public ObservableCollection<RequestViewModel> RequestsSource
        {
            get { return _requestsSource; }
            set
            {
                if (Equals(value, _requestsSource)) return;
                _requestsSource = value;
                OnPropertyChanged();
            }
        }

        public PaymentEdit(string name, PaymentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (string.IsNullOrEmpty(Entity.PaymentDocNumber))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан номер платежного документа"));
                return false;
            }
            if (Entity.Request == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан счет"));
                return false;
            }
            if (Entity.Sum <= 0)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана сумма оплаты"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
