using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class MaterialList : EntityList<MaterialViewModel, Material>
    {
        public MaterialList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(MaterialViewModel), typeof(MaterialEdit)));
        }

        protected override IEnumerable<MaterialViewModel> GetItems()
        {
            return RepositoryFactory.GetMaterialRepository().GetAllActive().Select(o => new MaterialViewModel(o, RepositoryFactory));
        }

        protected override MaterialViewModel DoCreateNewEntity()
        {
            return new MaterialViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Max(o => o.SortOrder) + 1,
                Name = "Новый материал"
            };
        }

        protected override void DoDeleteEntity(MaterialViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(MaterialViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note, entity.TechConditions);
        }
    }
}