using System;
using System.Linq;
using Rti.ViewModel.Commands;

namespace Rti.ViewModel.ListViewModel.DropStrategy
{
    public class AddChildDropStrategy : IDropStrategy
    {
        public void AcceptDropped(MasterDetailListItemViewModel item, MasterDetailListItemViewModel droppedItem,
            CommandExecutionInfo executionInfo, ref DropCancelInfo dropCancelInfo)
        {
            if (item == null)
                throw new ArgumentNullException("item");
            if (droppedItem == null)
                throw new ArgumentNullException("droppedItem");
            if (Equals(droppedItem, item))
                return;
            if (droppedItem.OwnerList != null)
                droppedItem.OwnerList.RemoveItem(droppedItem);
            if (!Equals(droppedItem.OwnerList, item.OwnerList))
                droppedItem.OwnerList = item.OwnerList;
            if (!Equals(droppedItem.Parent, item.Parent))
                droppedItem.Parent = item;
            var lastItem = item.ChildItems.LastOrDefault();
            droppedItem.SetSortOrder(lastItem == null ? 0 : lastItem.GetSortOrder() + 10);
            item.OwnerList.AddItem(item, droppedItem, item.ChildItems.Count);
        }
    }
}