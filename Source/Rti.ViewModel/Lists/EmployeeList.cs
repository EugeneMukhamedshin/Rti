using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class EmployeeList : EntityList<EmployeeViewModel, Employee>
    {
        public EmployeeList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(EmployeeViewModel), typeof(EmployeeEdit)));
        }

        protected override IEnumerable<EmployeeViewModel> GetItems()
        {
            return RepositoryFactory.GetEmployeeRepository().GetAllActive().Select(o => new EmployeeViewModel(o, RepositoryFactory));
        }

        protected override EmployeeViewModel DoCreateNewEntity()
        {
            return new EmployeeViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(EmployeeViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(EmployeeViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.FullName, entity.Note, entity.SortOrder, entity.JobName);
        }
    }
}