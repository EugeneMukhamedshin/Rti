using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Lists
{
    public class EquipmentPaymentList : EntityList<EquipmentPaymentViewModel, EquipmentPayment>
    {
        public DelegateCommand AddEquipmentPaymentCommand { get; set; }
        public DelegateCommand AddEquipmentPaymentToCurrentDrawingCommand { get; set; }
        public DelegateCommand EditEquipmentPaymentCommand { get; set; }
        public DelegateCommand EditEquipmentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }
        public DelegateCommand ReportCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public EquipmentPaymentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(EquipmentPaymentViewModel), typeof(EditViewModel.EquipmentPaymentEdit)));

            AddEquipmentPaymentCommand = new DelegateCommand(
                "Добавить оплату",
                o => true,
                o => AddEquipmentPayment());
            AddEquipmentPaymentToCurrentDrawingCommand = new DelegateCommand(
                "Добавить оплату",
                o => SelectedItem != null,
                o => AddEquipmentPaymentToCurrentDrawing());
            EditEquipmentPaymentCommand = new DelegateCommand(
                "Изменить оплату",
                o => o != null,
                o => EditEquipmentPayment((EquipmentPaymentViewModel)o));
            EditEquipmentCommand = new DelegateCommand(
                "Изменить оснастку",
                o => o != null,
                o => EditEquipment((EquipmentPaymentViewModel)o));
            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            ReportCommand = new DelegateCommand(o => Report());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void Report()
        {
            var viewModel = new EquipmentPaymentReportViewModel("Журнал оплаты оснастки", Items, ViewService,
                RepositoryFactory, Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"),
                "Журнал оплаты оснастки.xls")
            {
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls",
                StartDate = StartDate,
                EndDate = EndDate
            };
            viewModel.GenerateReport();
        }

        private void EditEquipment(EquipmentPaymentViewModel equipmentPayment)
        {
            var equipment = equipmentPayment.Drawing.Equipment;
            var edit = new EquipmentEdit("Изменение оснастки", equipment, !EditMode, ViewService, RepositoryFactory);
            edit.Refresh();
            ViewService.ShowViewDialog(edit);
        }

        private void AddEquipmentPayment()
        {
            var payment = DoCreateNewEntity();
            if (OpenViewModelEditWindow(payment, "Новая оплата", false))
            {
                Items.Add(payment);
                CheckEquipmentIsPaid(payment.Drawing);
            }
        }

        private void AddEquipmentPaymentToCurrentDrawing()
        {
            if (SelectedItem == null || SelectedItem.Drawing == null)
                return;
            var payment = DoCreateNewEntity();
            payment.Drawing = SelectedItem.Drawing;
            if (OpenViewModelEditWindow(payment,
                string.Format("Новая оплата по оснастке {0}", SelectedItem.Drawing.FullName), false))
            {
                CheckEquipmentIsPaid(payment.Drawing);
                Refresh();
            }
        }

        private void EditEquipmentPayment(EquipmentPaymentViewModel payment)
        {
            if (OpenViewModelEditWindow(payment, "Изменение оплаты", !EditMode))
                CheckEquipmentIsPaid(payment.Drawing);
        }


        private void CheckEquipmentIsPaid(DrawingViewModel drawing)
        {
            if (drawing != null && drawing.Equipment != null)
            {
                var payments = RepositoryFactory.GetEquipmentPaymentRepository().GetByDrawingId(drawing.Id);
                drawing.Equipment.IsPaid = payments.Sum(o => o.Sum) >= drawing.Equipment.Price;
                drawing.Equipment.SaveEntity();
            }

        }

        protected override IEnumerable<EquipmentPaymentViewModel> GetItems()
        {
            return
                RepositoryFactory.GetEquipmentPaymentRepository()
                    .GetByPeriod(StartDate, EndDate)
                    .Select(o => new EquipmentPaymentViewModel(o, RepositoryFactory))
                    .OrderBy(o => o.PaymentDate)
                    .ToList();
        }

        protected override EquipmentPaymentViewModel DoCreateNewEntity()
        {
            return new EquipmentPaymentViewModel(null, RepositoryFactory)
            {
                PaymentDate = DateTime.Today
            };
        }

        protected override void DoDeleteEntity(EquipmentPaymentViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
            CheckEquipmentIsPaid(entity.Drawing);
        }

        protected override bool AcceptFind(EquipmentPaymentViewModel entity, string searchText)
        {
            return false;
        }

        protected override void RequeryCommandsOnSelectionChanged()
        {
            base.RequeryCommandsOnSelectionChanged();
            AddEquipmentPaymentToCurrentDrawingCommand.RequeryCanExecute();
            AddEquipmentPaymentCommand.RequeryCanExecute();
            EditEquipmentPaymentCommand.RequeryCanExecute();
            EditEquipmentCommand.RequeryCanExecute();}
    }
}