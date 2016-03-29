using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.ListViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class RequestEdit: EditEntityViewModel<RequestViewModel, Request>
    {
        public RequestEdit(string name, RequestViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public DelegateCommand SelectCustomerCommand { get; set; }

        public SelectorViewModel<ContragentViewModel> CustomerSelector { get; set; }

        protected override void OnInitialize()
        {
            base.OnInitialize();
            SelectCustomerCommand = new DelegateCommand(
                "Выбрать материал",
                o => true,
                o => SelectCustomer());
            CustomerSelector = new SelectorViewModel<ContragentViewModel>();
            CustomerSelector.SelectedItemChanged += CustomerSelector_SelectedItemChanged;
            RefreshSelector(Entity.Customer);
        }

        void CustomerSelector_SelectedItemChanged(object sender, System.EventArgs e)
        {
            if (CustomerSelector.SelectedItem != null)
                UseCustomer(CustomerSelector.SelectedItem);
        }

        private void SelectCustomer()
        {
            var listViewModel = new ContragentList(0, false, ViewService, RepositoryFactory);
            listViewModel.Refresh();
            if (ViewService.ShowViewDialog(listViewModel) == true)
            {
                var customerItem = listViewModel.SelectedItem as ContragentListItem;
                if (customerItem != null)
                {
                    var customer = customerItem.Entity;
                    UseCustomer(customer);
                    RefreshSelector(customer);
                }
            }
        }

        private void RefreshSelector(ContragentViewModel customer)
        {
            DoAsync(
                () => RepositoryFactory.GetContragentRepository()
                .GetAllActive(0)
                .Select(m => new ContragentViewModel(m, RepositoryFactory))
                .ToList(),
                res => CustomerSelector.SelectorItems = new ObservableCollection<ContragentViewModel>(res));
            CustomerSelector.SelectorText = customer == null ? null : customer.Name;
            CustomerSelector.SelectedItem = customer;
        }

        private void UseCustomer(ContragentViewModel customer)
        {
            Entity.Customer = customer;
        }

        protected override bool DoValidate()
        {
            if (Entity.Customer == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан заказчик"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
