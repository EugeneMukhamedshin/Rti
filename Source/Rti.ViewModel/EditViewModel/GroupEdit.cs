using System;
using FogSoft.MonoReport.Processing;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class GroupEdit: EditEntityViewModel<GroupViewModel, Group>
    {
        public GroupEdit(string name, GroupViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование группы"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
