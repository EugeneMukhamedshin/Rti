using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class EquipmentList : EntityList<EquipmentViewModel, Equipment>
    {
        public EquipmentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(EquipmentViewModel), typeof(EquipmentEdit)));
        }

        protected override IEnumerable<EquipmentViewModel> GetItems()
        {
            return
                RepositoryFactory.GetEquipmentRepository()
                    .GetAllActiveWithDrawings()
                    .Select(o => new EquipmentViewModel(o.Item1, RepositoryFactory) {Drawing = new DrawingViewModel(o.Item2, RepositoryFactory)})
                    .OrderBy(o => o.SortOrder);
        }

        protected override EquipmentViewModel DoCreateNewEntity()
        {
            return new EquipmentViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
                Name = "Новая оснастка"
            };
        }

        protected override void DoDeleteEntity(EquipmentViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(EquipmentViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note, entity.SortOrder);
        }
    }
}