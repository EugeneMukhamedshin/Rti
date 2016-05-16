using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class ContragentList : EntityList<ContragentViewModel, Contragent>
    {
        private readonly ContragentType _listType;

        public string Name
        {
            get { return _listType == 0 ? "Заказчики" : "Поставщики"; }
        }

        public ContragentList(ContragentType listType, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            _listType = listType;
            TypeMaps.Add(new Tuple<Type, Type>(typeof(ContragentViewModel), typeof(ContragentEdit)));
        }

        protected override IEnumerable<ContragentViewModel> GetItems()
        {
            return RepositoryFactory.GetContragentRepository().GetAllActive(_listType).Select(o => new ContragentViewModel(o, RepositoryFactory));
        }

        protected override ContragentViewModel DoCreateNewEntity()
        {
            return new ContragentViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1,
                ContragentTypeEnum = _listType
            };
        }

        protected override void DoDeleteEntity(ContragentViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(ContragentViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Account, entity.Address, entity.Bank, entity.Bik, entity.Director, entity.Email, entity.Inn, entity.Ogrn, entity.Name, entity.Note);
        }
    }
}