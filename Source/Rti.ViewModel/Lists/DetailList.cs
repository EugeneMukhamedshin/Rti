using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.ListViewModel;

namespace Rti.ViewModel.Lists
{
    public class DetailList : EntityList<DetailViewModel, Detail>
    {
        public DetailList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(DetailViewModel), typeof(DetailEdit)));
        }

        protected override IEnumerable<DetailViewModel> GetItems()
        {
            return
                RepositoryFactory.GetDetailRepository()
                    .GetAllActive()
                    .Select(m => new DetailViewModel(m, RepositoryFactory));
        }

        protected override DetailViewModel DoCreateNewEntity()
        {
            return new DetailViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(DetailViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(DetailViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note);
        }
    }
}