using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Lists;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class ShipmentEdit : EditEntityViewModel<ShipmentViewModel, Shipment>
    {
        public ShipmentItemList ShipmentItemList { get; set; }

        public Lazy<List<RequestViewModel>> RequestsSource { get; set; }
        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }
        public List<PaymentViewModel> PaymentsSource { get; set; }

        public DelegateCommand OpenDeliveryEditCommand { get; set; }
        public DelegateCommand ShowShipmentTorg12ReportCommand { get; set; }
        public DelegateCommand ShowShipmentFactureReportCommand { get; set; }
        public DelegateCommand ShowShipmentTransportReportCommand { get; set; }
        public DelegateCommand ShowShipmentPassportReportCommand { get; set; }
        public DelegateCommand ShowShipmentUniversalDocumentReportCommand { get; set; }

        public ShipmentEdit(string name, ShipmentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            OpenDeliveryEditCommand = new DelegateCommand(
                "Открыть ТТН",
                o => true,
                o => OpenDeliveryEdit());
            ShowShipmentTorg12ReportCommand = new DelegateCommand(o => ShowShipmentTorg12Report());
            ShowShipmentFactureReportCommand = new DelegateCommand(o => ShowShipmentFactureReport());
            ShowShipmentTransportReportCommand = new DelegateCommand(o => ShowShipmentTransportReport());
            ShowShipmentPassportReportCommand = new DelegateCommand(o => ShowShipmentPassportReport());
            ShowShipmentUniversalDocumentReportCommand = new DelegateCommand(o => ShowShipmentUniversalDocumentReport());
            ShipmentItemList = new ShipmentItemList(entity, Editable, ViewService, RepositoryFactory);
            Entity.PropertyChanged += Entity_PropertyChanged;
        }

        private void ShowShipmentTorg12Report()
        {
            if (Entity.IsChanged || ShipmentItemList.IsChanged)
            { 
                if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                    return;
                if (!Save())
                    return;
            }
            var viewModel = new ShipmentTorg12ReportViewModel("Товарная накладная", ViewService, RepositoryFactory,
            Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Товарная накладная.xls")
            {
                Shipment = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void ShowShipmentFactureReport()
        {
            if (Entity.IsChanged || ShipmentItemList.IsChanged)
            {
                if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                    return;
                if (!Save())
                    return;
            }
            var viewModel = new ShipmentFactureReportViewModel("Счет-фактура", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Счет-фактура.xls")
            {
                Shipment = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void ShowShipmentTransportReport()
        {
            if (Entity.IsChanged || ShipmentItemList.IsChanged)
            {
                if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                    return;
                if (!Save())
                    return;
            }
            var viewModel = new ShipmentTransportReportViewModel("ТТН", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Товарно-транспортная накладная.xls")
            {
                Shipment = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void ShowShipmentPassportReport()
        {
            if (Entity.IsChanged || ShipmentItemList.IsChanged)
            {
                if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                    return;
                if (!Save())
                    return;
            }
            var viewModel = new ShipmentPassportReportViewModel("Паспорт", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Паспорт.xls")
            {
                Shipment = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void ShowShipmentUniversalDocumentReport()
        {
            if (Entity.IsChanged || ShipmentItemList.IsChanged)
            {
                if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                    return;
                if (!Save())
                    return;
            }
            var viewModel = new ShipmentUniversalDocumentReportViewModel("Универсальный передаточный документ", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Универсальный передаточный документ.xls")
            {
                Shipment = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void OpenDeliveryEdit()
        {
            var editViewModel = new DeliveryEdit("ТТН", Entity, ReadOnly, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            ViewService.ShowViewDialog(editViewModel);
        }
        private void Entity_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == "Request" && !((ShipmentViewModel)sender).IsMapping)
            {
                DoAsync(RefreshPaymentsSource, () =>
                {
                    if (PaymentsSource.Count == 1)
                        Entity.Payment = PaymentsSource.FirstOrDefault();
                    else
                        Entity.Payment = null;
                });
                ShipmentItemList.Items.Clear();
                ShipmentItemList.RefreshRequestDetails(Entity.Request);
                Entity.Recipient = Entity.Request.Customer;
                Entity.Payer = Entity.Request.Customer;
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
