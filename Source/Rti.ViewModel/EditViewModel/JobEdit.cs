using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class JobEdit: EditEntityViewModel<JobViewModel, Job>
    {
        public JobEdit(string name, JobViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование должности"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Login))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан логин"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Password))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан пароль"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
