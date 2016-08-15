<<<<<<< HEAD
﻿using System;
=======
using System;
>>>>>>> origin/develop
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class EquipmentPaymentList : EntityList<EquipmentPaymentViewModel, EquipmentPayment>
    {
        public DelegateCommand AddEquipmentPaymentCommand { get; set; }
        public DelegateCommand AddEquipmentPaymentToCurrentDrawingCommand { get; set; }
        public DelegateCommand EditEquipmentPaymentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public EquipmentPaymentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(EquipmentPaymentViewModel), typeof(EditViewModel.EquipmentPaymentEdit)));

            AddEquipmentPaymentCommand = new DelegateCommand(
<<<<<<< HEAD
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
            RefreshCommand = new DelegateCommand(
                "Обновить",
=======
                "�������� ������",
                o => true,
                o => AddEquipmentPayment());
            AddEquipmentPaymentToCurrentDrawingCommand = new DelegateCommand(
                "�������� ������",
                o => SelectedItem != null,
                o => AddEquipmentPaymentToCurrentDrawing());
            EditEquipmentPaymentCommand = new DelegateCommand(
                "�������� ������",
                o => o != null,
                o => EditEquipmentPayment((EquipmentPaymentViewModel)o));
            RefreshCommand = new DelegateCommand(
                "��������",
>>>>>>> origin/develop
                o => true,
                o => Refresh());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void AddEquipmentPayment()
        {
            var payment = DoCreateNewEntity();
<<<<<<< HEAD
            if (OpenViewModelEditWindow(payment, "Новая оплата", false))
=======
            if (OpenViewModelEditWindow(payment, "����� ������", false))
>>>>>>> origin/develop
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
<<<<<<< HEAD
                string.Format("Новая оплата по оснастке {0}", SelectedItem.Drawing.FullName), false))
=======
                string.Format("����� ������ �� �������� {0}", SelectedItem.Drawing.FullName), false))
>>>>>>> origin/develop
            {
                CheckEquipmentIsPaid(payment.Drawing);
                Refresh();
            }
        }

        private void EditEquipmentPayment(EquipmentPaymentViewModel payment)
        {
<<<<<<< HEAD
            if (OpenViewModelEditWindow(payment, "Изменение оплаты", !EditMode))
=======
            if (OpenViewModelEditWindow(payment, "��������� ������", !EditMode))
>>>>>>> origin/develop
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
        }
    }
}