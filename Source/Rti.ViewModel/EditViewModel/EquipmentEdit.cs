using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class EquipmentEdit: EditEntityViewModel<EquipmentViewModel, Equipment>
    {
        public EquipmentEdit(string name, EquipmentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование оснастки"));
                return false;
            }
            Entity.Output = Entity.FormCount*Entity.SlotCount;
            return base.DoValidate();
        }
    }
}
