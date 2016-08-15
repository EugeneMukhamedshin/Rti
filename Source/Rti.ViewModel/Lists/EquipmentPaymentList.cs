<<<<<<< HEAD
ï»¿using System;
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
                "Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ð¿Ð»Ð°Ñ‚Ñƒ",
                o => true,
                o => AddEquipmentPayment());
            AddEquipmentPaymentToCurrentDrawingCommand = new DelegateCommand(
                "Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¾Ð¿Ð»Ð°Ñ‚Ñƒ",
                o => SelectedItem != null,
                o => AddEquipmentPaymentToCurrentDrawing());
            EditEquipmentPaymentCommand = new DelegateCommand(
                "Ð˜Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð¾Ð¿Ð»Ð°Ñ‚Ñƒ",
                o => o != null,
                o => EditEquipmentPayment((EquipmentPaymentViewModel)o));
            RefreshCommand = new DelegateCommand(
                "ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ",
=======
                "Äîáàâèòü îïëàòó",
                o => true,
                o => AddEquipmentPayment());
            AddEquipmentPaymentToCurrentDrawingCommand = new DelegateCommand(
                "Äîáàâèòü îïëàòó",
                o => SelectedItem != null,
                o => AddEquipmentPaymentToCurrentDrawing());
            EditEquipmentPaymentCommand = new DelegateCommand(
                "Èçìåíèòü îïëàòó",
                o => o != null,
                o => EditEquipmentPayment((EquipmentPaymentViewModel)o));
            RefreshCommand = new DelegateCommand(
                "Îáíîâèòü",
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
            if (OpenViewModelEditWindow(payment, "ÐÐ¾Ð²Ð°Ñ Ð¾Ð¿Ð»Ð°Ñ‚Ð°", false))
=======
            if (OpenViewModelEditWindow(payment, "Íîâàÿ îïëàòà", false))
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
                string.Format("ÐÐ¾Ð²Ð°Ñ Ð¾Ð¿Ð»Ð°Ñ‚Ð° Ð¿Ð¾ Ð¾ÑÐ½Ð°ÑÑ‚ÐºÐµ {0}", SelectedItem.Drawing.FullName), false))
=======
                string.Format("Íîâàÿ îïëàòà ïî îñíàñòêå {0}", SelectedItem.Drawing.FullName), false))
>>>>>>> origin/develop
            {
                CheckEquipmentIsPaid(payment.Drawing);
                Refresh();
            }
        }

        private void EditEquipmentPayment(EquipmentPaymentViewModel payment)
        {
<<<<<<< HEAD
            if (OpenViewModelEditWindow(payment, "Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ðµ Ð¾Ð¿Ð»Ð°Ñ‚Ñ‹", !EditMode))
=======
            if (OpenViewModelEditWindow(payment, "Èçìåíåíèå îïëàòû", !EditMode))
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