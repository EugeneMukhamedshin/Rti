using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class PaymentList : EntityList<PaymentViewModel, Payment>
    {
        public DelegateCommand AddPaymentCommand { get; set; }
        public DelegateCommand AddPaymentToCurrentRequestCommand { get; set; }
        public DelegateCommand EditPaymentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public PaymentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(PaymentViewModel), typeof(EditViewModel.PaymentEdit)));

            AddPaymentCommand = new DelegateCommand(
               "Добавить оплату",
               o => true,
               o => AddPayment());
            AddPaymentToCurrentRequestCommand = new DelegateCommand(
               "Добавить оплату",
               o => SelectedItem != null,
               o => AddPaymentToCurrentRequest());
            EditPaymentCommand = new DelegateCommand(
                "Изменить оплату",
                o => o != null,
                o => EditPayment((PaymentViewModel)o));
            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;}

        private void AddPayment()
        {
            var payment = DoCreateNewEntity();
            if (OpenViewModelEditWindow(payment, "Новая оплата", false))
            {
                Items.Add(payment);
                CheckRequestIsPaid(payment.Request);
            }
        }

        private void AddPaymentToCurrentRequest()
        {
            if (SelectedItem == null || SelectedItem.Request == null)
                return;
            var payment = DoCreateNewEntity();
            payment.Request = SelectedItem.Request;
            if (OpenViewModelEditWindow(payment,
                string.Format("Новая оплата по счету {0} от {1:dd.MM.yyyy}г.", SelectedItem.Request.Number,
                    SelectedItem.Request.InvoiceDate), false))
            {
                CheckRequestIsPaid(payment.Request);
                Refresh();
            }
        }

        private void EditPayment(PaymentViewModel payment)
        {
            if (OpenViewModelEditWindow(payment, "Изменение оплаты", !EditMode))
                CheckRequestIsPaid(payment.Request);
        }


        private void CheckRequestIsPaid(RequestViewModel request)
        {
            if (request != null)
            {
                var requestPayments = RepositoryFactory.GetPaymentRepository().GetByRequestId(request.Id);
                request.IsPaid = requestPayments.Sum(o => o.Sum) >= request.Sum;
                request.SaveEntity();
            }

        }

        protected override IEnumerable<PaymentViewModel> GetItems()
        {
            return
                RepositoryFactory.GetPaymentRepository()
                    .GetByPeriod(StartDate, EndDate)
                    .Select(o => new PaymentViewModel(o, RepositoryFactory))
                    .OrderBy(o => o.PaymentDate)
                    .ToList();
        }

        protected override PaymentViewModel DoCreateNewEntity()
        {
            return new PaymentViewModel(null, RepositoryFactory)
            {
                PaymentDate = DateTime.Today
            };
        }

        protected override void DoDeleteEntity(PaymentViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
            CheckRequestIsPaid(entity.Request);
        }

        protected override bool AcceptFind(PaymentViewModel entity, string searchText)
        {
            return false;
        }

        protected override void RequeryCommandsOnSelectionChanged()
        {
            base.RequeryCommandsOnSelectionChanged();
            AddPaymentToCurrentRequestCommand.RequeryCanExecute();
        }
    }
}
