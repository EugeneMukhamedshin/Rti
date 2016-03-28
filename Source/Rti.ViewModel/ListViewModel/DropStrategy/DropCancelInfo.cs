namespace Rti.ViewModel.ListViewModel.DropStrategy
{
    public class DropCancelInfo
    {
        public IMasterDetailListViewModel DroppedItemOwnerList { get; set; }
        public MasterDetailListItemViewModel DroppedItemParentItem { get; set; }
        public int DroppedItemIndex { get; set; }

        public DropCancelInfo(MasterDetailListItemViewModel droppedItem)
        {
            DroppedItemOwnerList = droppedItem.OwnerList;
            DroppedItemParentItem = droppedItem.Parent;
            DroppedItemIndex = droppedItem.OwnerCollection.IndexOf(droppedItem);
        }
    }
}