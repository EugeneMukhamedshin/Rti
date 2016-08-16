﻿using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class ShippingOrderRecordEdit : EditEntityViewModel<ShippingOrderRecordViewModel, ShippingOrderRecord>
    {
        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }
        public Lazy<List<DrawingViewModel>> DrawingsSource { get; set; }

        public ShippingOrderRecordEdit(string name, ShippingOrderRecordViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public override void Refresh()
        {
            base.Refresh();
            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllActive().Select(m => new DrawingViewModel(m, RepositoryFactory)).ToList());
        }

        protected override bool DoValidate()
        {
            if (Entity.Customer == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан заказчик", true));
                return false;
            }
            if (Entity.Drawing == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан чертеж", true));
                return false;
            }
            if (Entity.BatchNumber == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан номер партии", true));
                return false;
            }
            return base.DoValidate();
        }
    }
}