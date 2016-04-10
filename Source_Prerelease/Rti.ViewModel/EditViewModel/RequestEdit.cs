using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.ListViewModel;
using Rti.ViewModel.Reports;

namespace Rti.ViewModel.EditViewModel
{
    public class RequestEdit : EditEntityViewModel<RequestViewModel, Request>
    {
        public RequestDetailList RequestDetailList { get; private set; }

        public RequestEdit(string name, RequestViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            RequestDetailList = new RequestDetailList(Entity, true, ViewService, RepositoryFactory);
            GenerateInvoiceCommand = new DelegateCommand(
                "Текущий счет",
                o => true,
                o => new InvoiceReport().BuildReport(entity.Id, RepositoryFactory));
        }

        public DelegateCommand GenerateInvoiceCommand { get; set; }

        public DelegateCommand SelectCustomerCommand { get; set; }

        public SelectorViewModel<ContragentViewModel> CustomerSelector { get; set; }

        public override void Refresh()
        {
            base.Refresh();
            RequestDetailList.Refresh();
            SelectCustomerCommand = new DelegateCommand(
                "Выбрать заказчика",
                o => true,
                o => SelectCustomer());
            CustomerSelector = new SelectorViewModel<ContragentViewModel>();
            CustomerSelector.SelectedItemChanged += CustomerSelector_SelectedItemChanged;
            RefreshSelector(Entity.Customer);
        }

        void CustomerSelector_SelectedItemChanged(object sender, EventArgs e)
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

        protected override void DoInternalSave()
        {
            base.DoInternalSave();
            if (Entity.IsChanged)
                Entity.SaveEntity();
            RequestDetailList.SaveChanges();
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
