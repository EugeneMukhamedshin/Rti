using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using Rti.ViewModel.Commands;

namespace Rti.ViewModel.ListViewModel
{
    public interface IMasterDetailListViewModel
    {
        IViewService ViewService { get; }

        ObservableCollection<MasterDetailListItemViewModel> RootItems { get; }
        bool EditMode { get; set; }
        bool IsLoading { get; set; }

        MasterDetailListItemViewModel SelectedItem { get; set; }
        List<MasterDetailListItemViewModel> Selection { get; set; }
        ObservableCollection<MasterDetailListItemViewModel> VisibleItems { get; set; }
        ObservableCollection<MasterDetailListItemViewModel> GetItemsFor(MasterDetailListItemViewModel parent); 

        bool AddToSelection(MasterDetailListItemViewModel item);
        bool RemoveFromSelection(MasterDetailListItemViewModel item);
        void Expand(MasterDetailListItemViewModel item);
        void Collapse(MasterDetailListItemViewModel item);

        //MasterDetailListItemViewModel CreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel selectedItem, object param);
        MasterDetailListItemViewModel CreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index, object param);
        bool DeleteItem(ref MasterDetailListItemViewModel item, bool askConfirmation = false);
        void EditItem(MasterDetailListItemViewModel item, bool editMode);

        void ExecuteDeleteItemCommand(List<MasterDetailListItemViewModel> items);
        void ExecuteChangeItemCommand(MasterDetailListItemViewModel item, Action<MasterDetailListItemViewModel> changeItemAction);
        void ExecuteEditItemCommand(MasterDetailListItemViewModel item);
        void ExecuteAcceptDroppedCommand(MasterDetailListItemViewModel itemDroppedTo, MasterDetailListItemViewModel droppedItem);
        void Copy();
        void ExecutePasteCommand(MasterDetailListItemViewModel item);
        void ExecuteCutCommand();
        void ExecuteCommand(Func<HistoryContext, Command> getCommand);

        //void AddItem(MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel selectedItem, MasterDetailListItemViewModel newItem, int offset);
        void AddItem(MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel newItem, int index);
        int RemoveItem(MasterDetailListItemViewModel item);
    }
}