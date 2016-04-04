using System;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.ListViewModel
{
    public class DictionaryListItem : MasterDetailListItemViewModel
    {
        public DictionaryListItem(IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
            : base(null, ownerList, repositoryFactory) { }
        
        public String Name { get; set; }

        public BaseViewModel DictionaryViewModel { get; set; }

        public override BaseViewModel GetEntity()
        {
            return null;
        }

        protected override bool CanAcceptDropped(MasterDetailListItemViewModel droppedItem)
        {
            return false;
        }

        protected override double DoGetSortOrder()
        {
            return 0;
        }

        protected override void DoSave() { }

        public override MasterDetailListItemViewModel GetDropItem()
        {
            return null;
        }

        public override bool AcceptFind(string text)
        {
            return text.ContainedIn(Name);
        }
    }
}