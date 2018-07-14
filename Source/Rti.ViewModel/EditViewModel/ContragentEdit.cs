using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class ContragentEdit: EditEntityViewModel<ContragentViewModel, Contragent>
    {
        public List<ContragentViewModel> CustomersSource { get; set; }

        public bool IsManufacturer => Entity?.IsManufacturer ?? false;

        public bool IsCustomer => Entity != null && Entity.ContragentTypeEnum == ContragentType.Customer;

        public ContragentEdit(string name, ContragentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public override void Refresh()
        {
            base.Refresh();
            CustomersSource = RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer)
                .Where(o => o.Id != Source.Entity.Id)
                .OrderBy(o => o.Name)
                .Select(o => new ContragentViewModel(o, RepositoryFactory)).ToList();
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
