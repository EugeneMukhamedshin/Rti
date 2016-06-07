using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Lists;

namespace Rti.ViewModel.EditViewModel
{
    public class ShipmentEdit: EditEntityViewModel<ShipmentViewModel, Shipment>
    {
        public ShipmentItemList ShipmentItemList { get; set; }

        public Lazy<List<RequestViewModel>> RequestsSource { get; set; }
        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }
        public List<PaymentViewModel> PaymentsSource { get; set; }

        public DelegateCommand OpenDeliveryEditCommand { get; set; }

        public ShipmentEdit(string name, ShipmentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            OpenDeliveryEditCommand = new DelegateCommand(
                "Открыть ТТН",
                o => true,
                o => OpenDeliveryEdit());
            ShipmentItemList = new ShipmentItemList(entity, Editable, ViewService, RepositoryFactory);
            Entity.PropertyChanged += Entity_PropertyChanged;
        }

        private void OpenDeliveryEdit()
        {
            var editViewModel = new DeliveryEdit("ТТН", Entity, ReadOnly, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            ViewService.ShowViewDialog(editViewModel);
        }

        private void Entity_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == "Request")
            {
                RefreshPaymentsSource();
                ShipmentItemList.Items.Clear();
                ShipmentItemList.RefreshRequestDetails();
            }
            if (e.PropertyName.In("IsReplace", "IsAddition"))
            {
                foreach (var item in ShipmentItemList.Items)
                {
                    item.ZeroPrice = Entity.IsReplace || Entity.IsAddition;
                }
            }
        }

        public override void Refresh()
        {
            base.Refresh();
            ShipmentItemList.Refresh();

            RequestsSource =
                new Lazy<List<RequestViewModel>>(
                    () =>
                        RepositoryFactory.GetRequestRepository()
                            .GetUnshipped()
                            .Select(o => new RequestViewModel(o, RepositoryFactory))
                            .ToList());
            CustomersSource =
                new Lazy<List<ContragentViewModel>>(
                    () =>
                        RepositoryFactory.GetContragentRepository()
                            .GetAllActive(ContragentType.Customer)
                            .Select(o => new ContragentViewModel(o, RepositoryFactory))
                            .ToList());
            RefreshPaymentsSource();
        }

        private void RefreshPaymentsSource()
        {
            PaymentsSource =
                        Entity.Request != null
                            ? RepositoryFactory.GetPaymentRepository()
                                .GetByRequestId(Entity.Request.Id)
                                .Select(o => new PaymentViewModel(o, RepositoryFactory))
                                .ToList()
                            : new List<PaymentViewModel>();
            Entity.Payment = PaymentsSource.SingleOrDefault();
            OnPropertyChanged("PaymentsSource");
        }

        protected override void DoSave()
        {
            base.DoSave();
            ShipmentItemList.SaveChanges();
            var controller = new ShipmentItemControllerViewModel(ViewService, RepositoryFactory);
            foreach (var shipmentItem in ShipmentItemList.Items)
            {
                controller.PostShipmentItem(shipmentItem);
            }
        }

        protected override bool DoValidate()
        {
            var controller = new ShipmentItemControllerViewModel(ViewService, RepositoryFactory);
            // Здесь надо добавить проверку количества
            foreach (var shipmentItem in ShipmentItemList.Items)
            {
                var notShippedWorkItems = RepositoryFactory.GetWorkItemRepository().GetNotShippedByDrawingId(shipmentItem.RequestDetail.Drawing.Id, Entity.Date, Entity.SortOrder);
                var doneCount = notShippedWorkItems.Sum(o => o.Item2);
                if (shipmentItem.Count > doneCount)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("По чертежу {0} невозможно отгрузить {1} деталей, т.к. изготовлено всего {2} деталей", shipmentItem.RequestDetail.Drawing.FullName, shipmentItem.Count, doneCount)));
                    return false;
                }
                if (!controller.ValidatePost(shipmentItem))
                {
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
