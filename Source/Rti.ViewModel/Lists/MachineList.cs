using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class MachineList : EntityList<MachineViewModel, Machine>
    {
        public MachineList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(MachineViewModel), typeof(MachineEdit)));
        }

        protected override IEnumerable<MachineViewModel> GetItems()
        {
            return
                RepositoryFactory.GetMachineRepository()
                    .GetAllActive()
                    .Select(m => new MachineViewModel(m, RepositoryFactory));
        }

        protected override MachineViewModel DoCreateNewEntity()
        {
            return new MachineViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(MachineViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(MachineViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note);
        }
    }
}