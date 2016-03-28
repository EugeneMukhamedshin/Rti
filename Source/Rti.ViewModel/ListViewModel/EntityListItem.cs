using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class EntityListItem<TEntityViewModel, TEntityModel> : MasterDetailListItemViewModel
        where TEntityViewModel : EntityViewModel<TEntityModel, TEntityViewModel> 
        where TEntityModel : class, IIdentifiedEntity, new()
    {
        public TEntityViewModel Entity { get; set; }

        public EntityListItem(TEntityViewModel entity, MasterDetailListItemViewModel parent, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory) : base(parent, ownerList, repositoryFactory)
        {
            Entity = entity;
            Entity.PropertyChanged += (sender, args) => Changed();
        }

        public override BaseViewModel GetEntity()
        {
            return Entity;
        }

        protected override bool CanAcceptDropped(MasterDetailListItemViewModel droppedItem)
        {
            throw new NotImplementedException();
        }

        protected override double DoGetSortOrder()
        {
            throw new NotImplementedException();
        }

        protected override void DoSave()
        {
            Entity.SaveEntity();
        }

        public override MasterDetailListItemViewModel GetDropItem()
        {
            return this;
        }

        public override bool AcceptFind(string text)
        {
            throw new NotImplementedException();
        }
    }
}