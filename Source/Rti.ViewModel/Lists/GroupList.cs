using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class GroupList : EntityList<GroupViewModel, Group>
    {
         public GroupList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(GroupViewModel), typeof(GroupEdit)));
        }

        protected override IEnumerable<GroupViewModel> GetItems()
        {
            return
                RepositoryFactory.GetGroupRepository()
                    .GetAllActive()
                    .Select(m => new GroupViewModel(m, RepositoryFactory));
        }

        protected override GroupViewModel DoCreateNewEntity()
        {
            return new GroupViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(GroupViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(GroupViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note);
        }
   }
}