using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using Rti.ViewModel.ListViewModel;

namespace Rti.App.View.Lists.DragDropLogic
{
    public class MasterDetailListDragDropManager : ListViewDragDropManager<MasterDetailListItemViewModel>
    {
        public MasterDetailListDragDropManager(ListView listView)
            : base(listView)
        {
            ShowDragAdorner = true;
            DragAdornerOpacity = 0.5;
        }

        protected override void OnProcessDrop(ObservableCollection<MasterDetailListItemViewModel> itemsSource,
            MasterDetailListItemViewModel dataItem, int oldIndex, int newIndex,
            DragEventArgs e)
        {
            var itemDragged = oldIndex >= 0 ? itemsSource[oldIndex].GetDropItem() : dataItem.GetDropItem();
            var itemDroppedTo = itemsSource[newIndex];
            itemDroppedTo.OwnerList.ExecuteAcceptDroppedCommand(itemDroppedTo, itemDragged);
        }

        protected override MasterDetailListItemViewModel GetData(IDataObject data)
        {
            MasterDetailListItemViewModel value;

            return base.GetData(data);
        }
    }
}