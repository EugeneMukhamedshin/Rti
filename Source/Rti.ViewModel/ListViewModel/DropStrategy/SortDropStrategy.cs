using System;
using Rti.ViewModel.Commands;

namespace Rti.ViewModel.ListViewModel.DropStrategy
{
    public class SortDropStrategy : IDropStrategy
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
            var droppedItemIndex = droppedItem.OwnerCollection.IndexOf(droppedItem);
            var itemIndex = item.OwnerCollection.IndexOf(item);
            double sortOrder;
            var thisItemSortOrder = item.GetSortOrder();
            if (droppedItemIndex < itemIndex && droppedItemIndex >= 0)
            {
                var nextItemSortOrder = item.NextItem == null ? thisItemSortOrder + 10 : item.NextItem.GetSortOrder();
                sortOrder = thisItemSortOrder + (nextItemSortOrder - thisItemSortOrder) / 2;
            }
            else
            {
                var prevItemSortOrder = item.PrevItem == null ? 0 : item.PrevItem.GetSortOrder();
                sortOrder = prevItemSortOrder + (thisItemSortOrder - prevItemSortOrder) / 2;
            }
            if (itemIndex == item.OwnerCollection.Count - 1)
                itemIndex++;
            if (Equals(item.Parent, droppedItem.Parent))
                item.OwnerList.IsLoading = true;
            if (droppedItem.OwnerList != null)
                droppedItem.OwnerList.RemoveItem(droppedItem);
            item.OwnerList.IsLoading = false;
            if (!Equals(droppedItem.OwnerList, item.OwnerList))
                droppedItem.OwnerList = item.OwnerList;
            if (!Equals(droppedItem.Parent, item.Parent))
                droppedItem.Parent = item.Parent;
            droppedItem.SetSortOrder(sortOrder);
            item.OwnerList.AddItem(item.Parent, droppedItem, itemIndex);
        }
    }
}