using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class EmployeeEdit: EditEntityViewModel<EmployeeViewModel, Employee>
    {
        public List<JobViewModel> Jobs { get; set; }

        public EmployeeEdit(string name, EmployeeViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            Jobs = RepositoryFactory.GetJobRepository()
                .GetAllActive()
                .Select(o => new JobViewModel(o, RepositoryFactory))
                .ToList();
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.FullName))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано полное имя"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Code))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан код"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
