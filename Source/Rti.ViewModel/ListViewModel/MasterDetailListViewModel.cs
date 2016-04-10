using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Windows.Input;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.ListViewModel.DropStrategy;
using Rti.ViewModel.TreeViewModel;

namespace Rti.ViewModel.ListViewModel
{
    public abstract class MasterDetailListViewModel<TItem> : BaseViewModel, IMasterDetailListViewModel where TItem : MasterDetailListItemViewModel
    {
        private ObservableCollection<MasterDetailListItemViewModel> _rootItems = new ObservableCollection<MasterDetailListItemViewModel>();
        private ObservableCollection<MasterDetailListItemViewModel> _visibleItems = new ObservableCollection<MasterDetailListItemViewModel>();
        private MasterDetailListItemViewModel _selectedItem;
        public IViewService ViewService { get; private set; }
        protected List<Tuple<Type, Type, Type>> TypeMaps = new List<Tuple<Type, Type, Type>>();
        private bool _editMode = true;
        private bool _selectMode = false;

        public HistoryContext HistoryContext { get; set; }

        public DelegateCommand AddItemCommand { get; set; }
        public DelegateCommand DeleteItemCommand { get; set; }
        public DelegateCommand EditItemCommand { get; set; }
        public DelegateCommand ViewItemCommand { get; set; }
        public DelegateCommand OpenItemCommand { get; set; }
        public DelegateCommand MoveItemCommand { get; set; }
        public DelegateCommand SelectItemCommand { get; set; }
        public DelegateCommand RouteKeyCommand { get; set; }
        public DelegateCommand FindCommand { get; set; }

        public DelegateCommand UndoCommand { get; set; }
        public DelegateCommand RedoCommand { get; set; }

        public event EventHandler RequeringCommands;

        public Action<MasterDetailListItemViewModel> SelectItemAction { get; set; }

        public bool EditMode
        {
            get { return _editMode; }
            set
            {
                if (value.Equals(_editMode)) return;
                _editMode = value;
                _selectMode = _selectMode && !_editMode;
                OnPropertyChanged();
            }
        }

        public bool SelectMode
        {
            get { return _selectMode; }
            set
            {
                if (value.Equals(_selectMode)) return;
                _selectMode = value;
                _editMode = _editMode && !_selectMode;
                OnPropertyChanged();
            }
        }

        public MasterDetailListItemViewModel SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                if (Equals(value, _selectedItem)) return;
                if (_selectedItem != null)
                    _selectedItem.IsSelected = false;
                _selectedItem = value;
                if (_selectedItem != null)
                    _selectedItem.IsSelected = true;
                RequeryCommands();
                OnPropertyChanged();
            }
        }
        
        public List<MasterDetailListItemViewModel> Selection { get; set; }

        public ObservableCollection<MasterDetailListItemViewModel> RootItems
        {
            get { return _rootItems; }
            set
            {
                if (Equals(value, _rootItems)) return;
                _rootItems = value;
                OnRootItemsChanged();
                OnPropertyChanged();
            }
        }

        protected void OnRootItemsChanged()
        {
            VisibleItems = new ObservableCollection<MasterDetailListItemViewModel>(RootItems.SelectMany(GetItemWithChilds).Where(item => item.IsVisible).Cast<TItem>());
        }

        public ObservableCollection<MasterDetailListItemViewModel> VisibleItems
        {
            get { return _visibleItems; }
            set
            {
                if (Equals(value, _visibleItems)) return;
                _visibleItems = value;
                OnPropertyChanged();
            }
        }

        private IEnumerable<MasterDetailListItemViewModel> GetItemWithChilds(MasterDetailListItemViewModel item)
        {
            var result = new List<MasterDetailListItemViewModel> { item };
            if (item.IsExpanded)
                result.AddRange(item.ChildItems.SelectMany(GetItemWithChilds));
            return result;
        }

        public MasterDetailListViewModel(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(repositoryFactory)
        {
            ViewService = viewService;
            HistoryContext = historyContext ?? new HistoryContext();
            HistoryContext.HistoryChanged += HistoryContext_HistoryChanged;
            EditMode = editMode;
            Selection = new List<MasterDetailListItemViewModel>();
            AddItemCommand = new DelegateCommand(
                "Добавить",
                o => EditMode,
                o => ExecuteCreateItemCommand(typeof(MasterDetailListItemViewModel), SelectedItem, -1));
            DeleteItemCommand = new DelegateCommand(
                "Удалить",
                o => EditMode && SelectedItem != null,
                o => ExecuteDeleteItemCommand(Selection));
            EditItemCommand = new DelegateCommand(
                "Изменить",
                o => EditMode && SelectedItem != null,
                o => ExecuteEditItemCommand(SelectedItem));
            ViewItemCommand = new DelegateCommand(
                "Изменить",
                o => SelectedItem != null,
                o => EditItem(SelectedItem, false));
            OpenItemCommand = new DelegateCommand(
                "Открыть",
                o => SelectedItem != null,
                o => OpenItem(SelectedItem));
            MoveItemCommand = new DelegateCommand(
                "Переместить",
                o => EditMode && SelectedItem != null,
                o => { });
            SelectItemCommand = new DelegateCommand(
                "Выбрать",
                o => SelectMode && SelectedItem != null,
                o =>
                {
                    if (SelectItemAction != null)
                        SelectItemAction(SelectedItem);
                });
            RouteKeyCommand = new DelegateCommand(
                "",
                o => true,
                o => RouteKeyToCommand((KeyEventArgs)o));
            FindCommand = new DelegateCommand(
                "Поиск",
                o => true,
                Find);
            UndoCommand = new DelegateCommand(
                "Отменить",
                o => HistoryContext.CanUndo,
                o => HistoryContext.Undo());
            RedoCommand = new DelegateCommand(
                "Вернуть",
                o => HistoryContext.CanRedo,
                o => HistoryContext.Redo());
        }

        void HistoryContext_HistoryChanged(object sender, EventArgs e)
        {
            UndoCommand.RequeryCanExecute();
            RedoCommand.RequeryCanExecute();
        }

        private void Find(object param)
        {
            var found = Find(param, false);
            if (!found && ViewService.ShowConfirmation(new MessageViewModel("Поиск", "Достигнут конец списка. Продолжить поиск сначала?")))
                Find(param, true);
        }

        private bool Find(object param, bool fromStart)
        {
            if (param == null)
                return false;
            var text = param.ToString();
            var allItems = RootItems.Traverse();
            var items = allItems.SkipWhile(i => !fromStart && SelectedItem != null && i != SelectedItem).Skip(!fromStart && SelectedItem != null ? 1 : 0);
            foreach (var item in items.Cast<MasterDetailListItemViewModel>())
            {
                var accepted = item.AcceptFind(text);
                if (accepted)
                {
                    ExpandTo(item);
                    SelectedItem = item;
                    return true;
                }
            }
            return false;
        }

        private void ExpandTo(MasterDetailListItemViewModel item)
        {
            if (item == null)
                return;
            if (item.Parent != null)
                item.Parent.IsExpanded = true;
            ExpandTo(item.Parent);
        }

        private void RouteKeyToCommand(KeyEventArgs keyEventArgs)
        {
            if (keyEventArgs.Key == Key.C && Keyboard.Modifiers == ModifierKeys.Control && SelectedItem != null)
            {
                SelectedItem.CopyCommand.Execute(null);
            }
            if (keyEventArgs.Key == Key.X && Keyboard.Modifiers == ModifierKeys.Control && SelectedItem != null)
            {
                SelectedItem.CutCommand.Execute(null);
            }
            if (keyEventArgs.Key == Key.V && Keyboard.Modifiers == ModifierKeys.Control && SelectedItem != null)
            {
                SelectedItem.PasteCommand.Execute(null);
            }
            if (keyEventArgs.Key == Key.Delete && SelectedItem != null)
            {
                SelectedItem.DeleteCommand.Execute(null);
            }
            if (keyEventArgs.Key == Key.Z && Keyboard.Modifiers == ModifierKeys.Control)
            {
                UndoCommand.Execute(null);
            }
            if (keyEventArgs.Key == Key.Z && Keyboard.Modifiers == (ModifierKeys.Control | ModifierKeys.Shift))
            {
                RedoCommand.Execute(null);
            }
        }

        //public MasterDetailListItemViewModel CreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel selectedItem = null, Object param = null)
        //{
        //    var item = DoCreateItem(itemType, ref parentItem, selectedItem, param);
        //    if (item == null)
        //        return null;
        //    AddItem(parentItem, selectedItem, item, 1);
        //    SelectedItem = item.GetSelected();
        //    return item;
        //}

        public MasterDetailListItemViewModel CreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index, Object param = null)
        {
            var item = DoCreateItem(itemType, ref parentItem, index, param);
            if (item == null)
                return null;
            AddItem(parentItem, item, index);
            SelectedItem = item.GetSelected();
            return item;
        }

        public bool DeleteItem(ref MasterDetailListItemViewModel item, bool askConfirmation = true)
        {
            return DoDeleteItem(ref item, askConfirmation);
        }

        public void EditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            DoEditItem(item, editMode);
        }

        public void OpenItem(MasterDetailListItemViewModel item)
        {
            if (EditMode)
                ExecuteEditItemCommand(item);
            else
                EditItem(item, false);
        }

        //protected abstract MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel selectedItem, Object param);

        protected abstract MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index, Object param);

        protected virtual bool DoDeleteItem(ref MasterDetailListItemViewModel item, bool askConfirmation)
        {
            if (!askConfirmation || ViewService.ShowConfirmation(new MessageViewModel("Удаление", "Подтвердите удаление")))
                return item.Delete();
            return false;
        }

        protected abstract bool DoEditItem(MasterDetailListItemViewModel item, bool editMode);

        public void ExecuteCreateItemCommand(Type itemType, MasterDetailListItemViewModel parentItem, int index = -1, Object param = null)
        {
            var createItemCommand = new CreateItemCommand(HistoryContext, this, itemType, parentItem, index, param);
            createItemCommand.Execute();
        }

        public void ExecuteDeleteItemCommand(List<MasterDetailListItemViewModel> items)
        {
            var command = new DeleteItemCommand(HistoryContext, this, items, ViewService);
            command.Execute();
        }

        public void ExecuteChangeItemCommand(MasterDetailListItemViewModel item, Action<MasterDetailListItemViewModel> changeItemAction)
        {
            var command = new ChangeItemCommand(HistoryContext, item, changeItemAction);
            command.Execute();
        }

        public void ExecuteEditItemCommand(MasterDetailListItemViewModel item)
        {
            var command = new EditItemCommand(HistoryContext, this, item);
            command.Execute();
        }

        public void ExecuteAcceptDroppedCommand(MasterDetailListItemViewModel itemDroppedTo, MasterDetailListItemViewModel droppedItem)
        {
            var command = new AcceptDroppedCommand(HistoryContext, itemDroppedTo, droppedItem);
            command.Execute();
        }

        public void Copy()
        {
            ListItemClipboard.Instance.SetItems(Selection.Select(item => item.GetDropItem()));
        }

        public void ExecutePasteCommand(MasterDetailListItemViewModel item)
        {
            var command = new PasteItemCommand(HistoryContext, item);
            command.Execute();
        }

        public void ExecuteCutCommand()
        {
            var command = new CutCommand(HistoryContext, this, Selection);
            command.Execute();
        }

        public void ExecuteCommand(Func<HistoryContext, Command> getCommand)
        {
            var command = getCommand(HistoryContext);
            command.Execute();
        }

        //public void AddItem(MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel selectedItem, MasterDetailListItemViewModel newItem, int offset)
        //{
        //    if (parentItem != null)
        //    {
        //        parentItem.AddChild(newItem, selectedItem, offset);
        //    }
        //    else
        //    {
        //        if (selectedItem != null && RootItems.Contains(selectedItem) &&
        //            RootItems.IndexOf(selectedItem) < RootItems.Count - offset)
        //        {
        //            RootItems.Insert(RootItems.IndexOf(selectedItem) + offset, newItem);
        //        }
        //        else
        //        {
        //            RootItems.Add(newItem);
        //        }
        //    }
        //    OnRootItemsChanged();
        //}

        public void AddItem(MasterDetailListItemViewModel parentItem, MasterDetailListItemViewModel newItem, int index)
        {
            if (parentItem != null)
            {
                parentItem.AddChild(newItem, index);
            }
            else
            {
                if (index >= 0 && index < RootItems.Count)
                    RootItems.Insert(index, newItem);
                else
                    RootItems.Add(newItem);
            }
            OnRootItemsChanged();
        }

        public int RemoveItem(MasterDetailListItemViewModel item)
        {
            int index;
            var selectedItem = (TItem)item;
            if (selectedItem.Parent == null)
            {
                index = RootItems.IndexOf(selectedItem);
                RootItems.Remove(selectedItem);
            }
            else
            {
                index = selectedItem.Parent.Childs.IndexOf(selectedItem);
                selectedItem.Parent.RemoveChild(selectedItem);
            }
            if (VisibleItems.Contains(selectedItem))
            {
                Collapse(selectedItem);
                VisibleItems.Remove(selectedItem);
            }
            OnRootItemsChanged();
            return index;
        }

        public ObservableCollection<MasterDetailListItemViewModel> GetItemsFor(MasterDetailListItemViewModel parent)
        {
            return parent == null ? RootItems : parent.ChildItems;
        }

        public bool AddToSelection(MasterDetailListItemViewModel item)
        {
            if (!Selection.Any() || Selection.First().GetType() == item.GetType())
            {
                Selection.Add(item);
                Selection = Selection.OrderBy(selected => VisibleItems.IndexOf(selected)).ToList();
                Debug.Print("Selected {0}", Selection.Count);
                return true;
            }
            return false;
        }

        public bool RemoveFromSelection(MasterDetailListItemViewModel item)
        {
            Selection.Remove(item);
            Debug.Print("Selected {0}", Selection.Count);
            return true;
        }

        public void Expand(MasterDetailListItemViewModel item)
        {
            var selectedItem = (TItem)item;
            if (VisibleItems == null)
                return;
            var position = VisibleItems.IndexOf(selectedItem);
            if (position < 0)
                return;
            foreach (var childItem in selectedItem.ChildItems)
            {
                SetVisible(childItem, ref position);
            }
        }

        public void SetVisible(MasterDetailListItemViewModel item, ref int position)
        {
            if (item.IsVisible)
                VisibleItems.Insert(++position, (TItem)item);
            if (!item.IsExpanded)
                return;
            foreach (var childItem in item.ChildItems)
            {
                SetVisible(childItem, ref position);
            }
        }

        public void Collapse(MasterDetailListItemViewModel item)
        {
            if (VisibleItems == null)
                return;
            foreach (var childItem in item.ChildItems)
            {
                SetInvisible(childItem);
            }
        }

        public void SetInvisible(MasterDetailListItemViewModel item)
        {
            if (VisibleItems == null)
                return;
            foreach (var childItem in item.ChildItems)
            {
                SetInvisible(childItem);
            }
            VisibleItems.Remove((TItem)item);
        }

        protected virtual void RequeryCommands()
        {
            AddItemCommand.RequeryCanExecute();
            DeleteItemCommand.RequeryCanExecute();
            EditItemCommand.RequeryCanExecute();

            OnRequeryCommands();
        }

        private void OnRequeryCommands()
        {
            if (RequeringCommands != null)
                RequeringCommands(this, EventArgs.Empty);
        }

        protected bool OpenViewModelEditWindow<TItemViewModel, TEntityViewModel, TEntity>(TEntityViewModel entityViewModel, string name, bool readOnly)
            where TItemViewModel : MasterDetailListItemViewModel
            where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel>
            where TEntity : class, IIdentifiedEntity, new()
        {
            var typeMap = TypeMaps.FirstOrDefault(map => map.Item1 == typeof(TItemViewModel));
            if (typeMap == null)
                throw new InvalidOperationException("Не найдена информация о добавляемом элементе");
            if (entityViewModel.GetType() != typeMap.Item2)
                throw new InvalidOperationException("Тип модели представления не соответствует типу элемента");
            var clone = (TEntityViewModel)Activator.CreateInstance(typeof(TEntityViewModel), null, RepositoryFactory);
            entityViewModel.CopyTo(clone);
            var editViewModel = (BaseViewModel)Activator.CreateInstance(typeMap.Item3, name, clone, readOnly, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            var result = ViewService.ShowViewDialog(editViewModel) == true;
            if (!result) return false;
            clone.CopyTo(entityViewModel);
            entityViewModel.SaveEntity();
            return true;
        }
    }

    public class CreateItemCommand : Command
    {
        private readonly IMasterDetailListViewModel _list;
        private readonly Type _itemType;
        private MasterDetailListItemViewModel _createdItem;
        private MasterDetailListItemViewModel _parentItem;
        private readonly MasterDetailListItemViewModel _selectedItem;
        private readonly int _index;
        private readonly object _param;

        public CreateItemCommand(HistoryContext historyContext, IMasterDetailListViewModel list, Type itemType, MasterDetailListItemViewModel parentItem, int index, object param)
            : base(historyContext)
        {
            _list = list;
            _itemType = itemType;
            _parentItem = parentItem;
            _index = index;
            _param = param;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            var parent = _parentItem;
            if (!Cancelled)
            {
                _createdItem = _list.CreateItem(_itemType, ref parent, _index, _param);
                _parentItem = parent;
                if (_createdItem == null)
                    Cancelled = true;
            }
            else
            {
                _createdItem.CancelDelete();
                _list.AddItem(_parentItem, _createdItem, _index);
            }
        }

        protected override void DoCancel()
        {
            _createdItem.Delete();
            _list.RemoveItem(_createdItem);
        }
    }

    public class DeleteItemCommand : Command
    {
        protected bool AskConfirmation = true;
        protected readonly List<MasterDetailListItemViewModel> Items;
        private readonly IMasterDetailListViewModel _list;
        protected readonly IViewService ViewService;
        private readonly List<DeleteItemInfo> _deleteItemInfos = new List<DeleteItemInfo>();

        private class DeleteItemInfo
        {
            public MasterDetailListItemViewModel RemovedItem { get; set; }
            public MasterDetailListItemViewModel ParentItem { get; set; }
            public int Index { get; set; }
        }

        public DeleteItemCommand(HistoryContext historyContext, IMasterDetailListViewModel list, List<MasterDetailListItemViewModel> items, IViewService viewService)
            : base(historyContext)
        {
            Items = new List<MasterDetailListItemViewModel>(items);
            _list = list;
            ViewService = viewService;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            if (!Cancelled)
            {
                var askConfirmation = AskConfirmation;
                if (AskConfirmation && Items.Count > 1)
                {
                    if (!ViewService.ShowConfirmation(new MessageViewModel("Удаление", "Удалить строки?")))
                    {
                        Cancelled = true;
                        return;
                    }
                    askConfirmation = false;
                }
                var allItemsAreFixed = Items.Aggregate(true, (res, item) => res && item.IsFixed);
                if (allItemsAreFixed)
                {
                    Cancelled = true;
                    return;
                }
                for (int i = 0; i < Items.Count; i++)
                {
                    var item = Items[i];
                    if (item.IsFixed)
                        continue;
                    var index = _list.VisibleItems.IndexOf(item.GetSelected());
                    if (_list.DeleteItem(ref item, askConfirmation))
                    {
                        var info = new DeleteItemInfo();
                        info.ParentItem = item.Parent;
                        var collection = info.ParentItem == null ? _list.RootItems : info.ParentItem.ChildItems;
                        info.Index = collection.IndexOf(item);
                        info.RemovedItem = item;
                        _list.RemoveItem(item);
                        _list.SelectedItem = _list.VisibleItems.Count > 0
                            ? _list.VisibleItems[Math.Min(index, _list.VisibleItems.Count - 1)]
                            : null;
                        _deleteItemInfos.Add(info);
                    }
                    else
                        Cancelled = true;
                }
            }
            else
            {
                for (int i = 0; i < _deleteItemInfos.Count; i++)
                {
                   var info = _deleteItemInfos[i];
                    info.RemovedItem.Delete();
                    _list.RemoveItem(info.RemovedItem);
                }
            }
        }

        protected override void DoCancel()
        {
            for (int i = _deleteItemInfos.Count - 1; i >= 0; i--)
            {
                var info = _deleteItemInfos[i];
                info.RemovedItem.CancelDelete();
                _list.AddItem(info.ParentItem, info.RemovedItem, info.Index);
            }
        }
    }

    public class ChangeItemCommand : Command
    {
        private readonly MasterDetailListItemViewModel _initialItem;
        protected Action<MasterDetailListItemViewModel> ChangeItemAction;
        private object _beforeEdit;
        private object _afterEdit;

        protected ChangeItemCommand(HistoryContext historyContext, MasterDetailListItemViewModel initialItem) : base(historyContext)
        {
            _initialItem = initialItem;
        }

        public ChangeItemCommand(HistoryContext historyContext, MasterDetailListItemViewModel initialItem, Action<MasterDetailListItemViewModel> changeItemAction) : base(historyContext)
        {
            _initialItem = initialItem;
            ChangeItemAction = changeItemAction;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            if (ChangeItemAction == null)
            {
                Cancelled = true;
                return;
            }
            if (!Cancelled)
            {
                _beforeEdit = _initialItem.Backup();
                ChangeItemAction(_initialItem);
                _afterEdit = _initialItem.Backup();
            }
            else
            {
                _initialItem.RestoreFrom(_afterEdit);
            }
        }

        protected override void DoCancel()
        {
            _initialItem.RestoreFrom(_beforeEdit);
        }
    }

    public class EditItemCommand : ChangeItemCommand
    {
        private readonly IMasterDetailListViewModel _list;

        public EditItemCommand(HistoryContext historyContext, IMasterDetailListViewModel list, MasterDetailListItemViewModel initialItem) 
            : base(historyContext, initialItem)
        {
            _list = list;
            ChangeItemAction = item => _list.EditItem(item, true);
        }
    }

    public class AcceptDroppedCommand : Command
    {
        private readonly MasterDetailListItemViewModel _item;
        private readonly MasterDetailListItemViewModel _droppedItem;
        private DropCancelInfo _dropCancelInfo;

        public AcceptDroppedCommand(HistoryContext historyContext, MasterDetailListItemViewModel item, MasterDetailListItemViewModel droppedItem) : base(historyContext)
        {
            _item = item;
            _droppedItem = droppedItem;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            _item.AcceptDropped(_droppedItem, executionInfo, ref _dropCancelInfo);
        }

        protected override void DoCancel()
        {
            _item.CancelAcceptDropped(_droppedItem, _dropCancelInfo);
        }
    }

    public class PasteItemCommand : Command
    {
        private readonly MasterDetailListItemViewModel _item;
        private List<MasterDetailListItemViewModel> _copiedItems;
        private List<MasterDetailListItemViewModel> _pastedItems;
        private List<object> _pasteCancelInfo;

        public PasteItemCommand(HistoryContext historyContext, MasterDetailListItemViewModel item) : base(historyContext)
        {
            _item = item;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            if (!Cancelled)
            {
                _copiedItems = ListItemClipboard.Instance.GetItems();
                if (!_copiedItems.Any())
                {
                    Cancelled = true;
                    return;
                }
            }
            _pastedItems = _copiedItems.Select(item => item.GetCopy(item.Parent, null)).ToList();
            _item.Paste(_pastedItems, executionInfo);
        }

        protected override void DoCancel()
        {
            _item.CancelPaste(_pastedItems);
        }
    }

    public class CutCommand : DeleteItemCommand
    {
        public CutCommand(HistoryContext historyContext, IMasterDetailListViewModel list, List<MasterDetailListItemViewModel> items) : base(historyContext, list, items, null)
        {
            AskConfirmation = false;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            if (!Cancelled)
            {
                //var item = Items.First().GetDropItem();
                //ListItemClipboard.Instance.SetItem(item.GetCopy(item.Parent, item.OwnerList));
                ListItemClipboard.Instance.SetItems(Items.Select(item => item.GetDropItem()));
            }
            base.DoExecute(executionInfo);
        }
    }

    public class ChangePropertyValueCommand<TPropertyType> : Command
    {
        private readonly Func<TPropertyType> _getValue;
        private readonly Action<TPropertyType> _setValue;
        private readonly TPropertyType _value;

        private TPropertyType _oldValue;

        public ChangePropertyValueCommand(
            HistoryContext historyContext,
            Func<TPropertyType> getValue,
            Action<TPropertyType> setValue,
            TPropertyType value) : base(historyContext)
        {
            _getValue = getValue;
            _setValue = setValue;
            _value = value;
        }

        protected override void DoExecute(CommandExecutionInfo executionInfo)
        {
            if (!Cancelled)
            {
                _oldValue = _getValue();
                _setValue(_value);
            }
            else
            {
                _setValue(_value);
            }
        }

        protected override void DoCancel()
        {
            _setValue(_oldValue);
        }
    }
}