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
    public class DriverList : EntityList<DriverViewModel, Driver>
    {
        public DriverList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(DriverViewModel), typeof(DriverEdit)));
        }

        protected override IEnumerable<DriverViewModel> GetItems()
        {
            return
                RepositoryFactory.GetDriverRepository()
                    .GetAllActive()
                    .Select(o => new DriverViewModel(o, RepositoryFactory));
        }

        protected override DriverViewModel DoCreateNewEntity()
        {
            return new DriverViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(DriverViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(DriverViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.CarModel, entity.Document, entity.Name, entity.Number);
        }
    }
}