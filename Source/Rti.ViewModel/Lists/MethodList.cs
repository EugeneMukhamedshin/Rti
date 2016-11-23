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
    public class MethodList : EntityList<MethodViewModel, Method>
    {
        public MethodList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(MethodViewModel), typeof(MethodEdit)));
        }

        protected override IEnumerable<MethodViewModel> GetItems()
        {
            return
                RepositoryFactory.GetMethodRepository()
                    .GetAllActive()
                    .Select(m => new MethodViewModel(m, RepositoryFactory))
                    .OrderBy(o => o.Name);
        }

        protected override MethodViewModel DoCreateNewEntity()
        {
            return new MethodViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(MethodViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(MethodViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note);
        }
    }
}