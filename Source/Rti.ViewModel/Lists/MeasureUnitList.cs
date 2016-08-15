using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class MeasureUnitList : EntityList<MeasureUnitViewModel, MeasureUnit>
    {
        public MeasureUnitList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(MeasureUnitViewModel), typeof(MeasureUnitEdit)));
        }

        protected override IEnumerable<MeasureUnitViewModel> GetItems()
        {
            return
                RepositoryFactory.GetMeasureUnitRepository()
                    .GetAllActive()
                    .Select(m => new MeasureUnitViewModel(m, RepositoryFactory));
        }

        protected override MeasureUnitViewModel DoCreateNewEntity()
        {
            return new MeasureUnitViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(MeasureUnitViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(MeasureUnitViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Code);
        }
    }
}