﻿using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class AdditionalInfoEdit: EditEntityViewModel<AdditionalInfoViewModel, AdditionalInfo>
    {
        public AdditionalInfoEdit(string name, AdditionalInfoViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана дополнительная информация"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
