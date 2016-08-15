using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class ContragentEdit: EditEntityViewModel<ContragentViewModel, Contragent>
    {
        public bool IsManufacturer
        {
            get { return Entity == null ? false : Entity.IsManufacturer; }
        }

        public ContragentEdit(string name, ContragentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование контрагента"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
