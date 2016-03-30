using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.Linq;
using System.Reflection;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.ListViewModel.DropStrategy;

namespace Rti.ViewModel.ListViewModel
{
    public abstract class MasterDetailListItemViewModel : BaseViewModel, IComposite
    {
        private bool _isExpanded;
        private bool _isSelected;
        private bool _isExpandable;
        private bool _isVisible;
        private MasterDetailListItemViewModel _parent;
        private IMasterDetailListViewModel _ownerList;

        public bool IsExpanded
        {
            get { return _isExpanded; }
            set
            {
                if (value.Equals(_isExpanded)) return;
                _isExpanded = value;
                OnPropertyChanged();
                if (OwnerList != null)
                    if (_isExpanded)
                        OwnerList.Expand(this);
                    else
                        OwnerList.Collapse(this);
            }
        }

        public bool IsSelected
        {
            get { return _isSelected; }
            set
            {
                if (value.Equals(_isSelected)) return;
                bool result;
                if (value)
                    result = OwnerList.AddToSelection(this);
                else
                    result = OwnerList.RemoveFromSelection(this);
                if (result)
                    _isSelected = value;
                OnPropertyChanged();
            }
        }

        public bool IsExpandable
        {
            get
            {
                return _isExpandable && ChildItems != null && ChildItems.Any();
            }
            set { _isExpandable = value; }
        }

        public bool IsVisible
        {
            get { return _isVisible; }
            set
            {
                if (value.Equals(_isVisible)) return;
                _isVisible = value;
                OnPropertyChanged();
            }
        }

        public virtual bool IsFixed { get { return false; } }

        public virtual ObservableCollection<MasterDetailListItemViewModel> ChildItems { get; private set; }

        public MasterDetailListItemViewModel Parent
        {
            get { return _parent; }
            set
            {
                _parent = value;
                OnParentChanged();
            }
        }

        public MasterDetailListItemViewModel NextItem
        {
            get
            {
                return _parent == null ? OwnerList.RootItems.ElementAtOrDefault(OwnerList.RootItems.IndexOf(this) + 1) : _parent.ChildItems.ElementAtOrDefault(_parent.ChildItems.IndexOf(this) + 1);
            }
        }


        public MasterDetailListItemViewModel PrevItem
        {
            get
            {
                return _parent == null ? OwnerList.RootItems.ElementAtOrDefault(OwnerList.RootItems.IndexOf(this) - 1) : _parent.ChildItems.ElementAtOrDefault(_parent.ChildItems.IndexOf(this) - 1);
            }
        }

        protected virtual void OnParentChanged() { }

        public IMasterDetailListViewModel OwnerList
        {
            get { return _ownerList; }
            set
            {
                _ownerList = value;
                OnOwnerListChanged();
                if (ChildItems != null)
                    foreach (var childItem in ChildItems)
                    {
                        childItem.OwnerList = value;
                    }
            }
        }

        public int IndexInParentCollection
        {
            get { return OwnerList.GetItemsFor(Parent).IndexOf(this); }
        }

        protected virtual void OnOwnerListChanged() { }

        public DelegateCommand CutCommand { get; set; }
        public DelegateCommand CopyCommand { get; set; }
        public DelegateCommand PasteCommand { get; set; }

        public DelegateCommand EditCommand { get; set; }
        public DelegateCommand DeleteCommand { get; set; }

        public MasterDetailListItemViewModel(MasterDetailListItemViewModel parent, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            OwnerList = ownerList;
            Parent = parent;
            Initialize();
        }

        private void Initialize()
        {
            ChildItems = new ObservableCollection<MasterDetailListItemViewModel>();
            ChildItems.CollectionChanged += ChildItems_CollectionChanged;
            _isVisible = true;
            _isExpandable = true;

            CutCommand = new DelegateCommand(
                "Вырезать",
                o => CanCut(),
                o => OwnerList.ExecuteCutCommand());
            CopyCommand = new DelegateCommand(
                "Копировать",
                o => CanCopy(),
                o => OwnerList.Copy());
            PasteCommand = new DelegateCommand(
                "Вставить",
                o => CanPaste(),
                o => OwnerList.ExecutePasteCommand(this));

            DeleteCommand = new DelegateCommand(
                "Удалить",
                o => true,
                o => OwnerList.ExecuteDeleteItemCommand(o == null ? OwnerList.Selection : new List<MasterDetailListItemViewModel> { (MasterDetailListItemViewModel)o }));
            EditCommand = new DelegateCommand(
                "Изменить",
                o => true,
                o => OwnerList.ExecuteEditItemCommand(this));
        }

        private void ChildItems_CollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            OnChildItemsChanged();
        }

        protected virtual void OnChildItemsChanged() { }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "IsLoading")
                OwnerList.IsLoading = IsLoading;
        }

        protected MasterDetailListItemViewModel()
        {
            Initialize();
        }

        public void AddChild(MasterDetailListItemViewModel item, MasterDetailListItemViewModel afterItem, int offset)
        {
            if (afterItem != null && ChildItems.Contains(afterItem) &&
                ChildItems.IndexOf(afterItem) < ChildItems.Count - offset)
            {
                var index = ChildItems.IndexOf(afterItem) + offset;
                ChildItems.Insert(index, item);
                OnChildItemInserted(item, index);
            }
            else
            {
                ChildItems.Add(item);
                OnChildItemAdded(item);
            }
            OnPropertyChanged("IsExpandable");
        }

        public void AddChild(MasterDetailListItemViewModel item, int index)
        {
            if (index >= 0 && index < ChildItems.Count)
            {
                ChildItems.Insert(index, item);
                OnChildItemInserted(item, index);
            }
            else
            {
                ChildItems.Add(item);
                OnChildItemAdded(item);
            }
            OnPropertyChanged("IsExpandable");
        }

        protected virtual void OnChildItemAdded(MasterDetailListItemViewModel item) { }

        protected virtual void OnChildItemInserted(MasterDetailListItemViewModel item, int index) { }

        public void RemoveChild(MasterDetailListItemViewModel item)
        {
            if (ChildItems.Contains(item))
            {
                ChildItems.Remove(item);
                OnPropertyChanged("IsExpandable");
            }
        }

        public virtual bool Delete()
        {
            return true;
        }

        public virtual void CancelDelete()
        {

        }

        public abstract BaseViewModel GetEntity();

        protected void Changed()
        {
            foreach (var prop in GetType().GetProperties(BindingFlags.Public | BindingFlags.DeclaredOnly | BindingFlags.Instance))
            {
                OnPropertyChanged(prop.Name);
            }
            OnChanged();
        }

        protected virtual void OnChanged() { }

        public void AcceptDropped(MasterDetailListItemViewModel droppedItem, CommandExecutionInfo executionInfo, ref DropCancelInfo dropCancelInfo)
        {
            if (OwnerList.EditMode && CanAcceptDropped(droppedItem))
            {
                dropCancelInfo = new DropCancelInfo(droppedItem);
                DoAcceptDropped(droppedItem, executionInfo, ref dropCancelInfo);
            }
            else
            {
                executionInfo.AddToHistory = false;
            }
        }

        protected abstract bool CanAcceptDropped(MasterDetailListItemViewModel droppedItem);

        public void CancelAcceptDropped(MasterDetailListItemViewModel droppedItem, DropCancelInfo dropCancelInfo)
        {
            DoCancelAcceptDropped(droppedItem, dropCancelInfo);
        }

        public ObservableCollection<MasterDetailListItemViewModel> OwnerCollection
        {
            get
            {
                return Parent == null ? OwnerList.RootItems : Parent.ChildItems;
            }
        }

        protected virtual IDropStrategy GetDropStrategy(MasterDetailListItemViewModel droppedItem)
        {
            return new SortDropStrategy();
        }

        protected virtual void DoAcceptDropped(MasterDetailListItemViewModel droppedItem,
            CommandExecutionInfo executionInfo, ref DropCancelInfo dropCancelInfo)
        {
            var dropStrategy = GetDropStrategy(droppedItem);
            if (dropStrategy != null)
                dropStrategy.AcceptDropped(this, droppedItem, executionInfo, ref dropCancelInfo);
        }

        public double GetSortOrder()
        {
            return DoGetSortOrder();
        }

        protected abstract double DoGetSortOrder();

        protected virtual void DoCancelAcceptDropped(MasterDetailListItemViewModel droppedItem, DropCancelInfo dropCancelInfo)
        {
            OwnerList.RemoveItem(droppedItem);
            var info = dropCancelInfo as DropCancelInfo;
            if (info == null)
                return;
            info.DroppedItemOwnerList.AddItem(info.DroppedItemParentItem, droppedItem, info.DroppedItemIndex);
            droppedItem.OwnerList = info.DroppedItemOwnerList;
            droppedItem.Parent = info.DroppedItemParentItem;
            droppedItem.SaveWithChildsAsync();
        }

        public virtual MasterDetailListItemViewModel GetSelected()
        {
            return this;
        }

        public T GetParent<T>()
            where T : MasterDetailListItemViewModel
        {
            if (Parent == null)
                return null;
            if (Parent is T)
                return (T)Parent;
            return Parent.GetParent<T>();
        }

        protected virtual bool CanCut() { return OwnerList == null ? false : OwnerList.EditMode; }

        protected virtual bool CanCopy() { return true; }

        protected virtual bool CanPaste() { return OwnerList == null ? false : (OwnerList.EditMode && !ListItemClipboard.Instance.IsEmpty()); }

        public MasterDetailListItemViewModel GetCopy(MasterDetailListItemViewModel parent, IMasterDetailListViewModel ownerList)
        {
            bool copyChilds = true;
            var copy = GetThisCopy(parent, ref copyChilds);
            copy.Parent = parent;
            copy.OwnerList = ownerList;
            if (copyChilds)
                foreach (var childItem in ChildItems)
                {
                    copy.ChildItems.Add(childItem.GetCopy(copy, ownerList));
                }
            return copy;
        }

        protected virtual MasterDetailListItemViewModel GetThisCopy(MasterDetailListItemViewModel parent, ref bool copyChilds)
        {
            throw new NotImplementedException();
        }

        //private void Copy()
        //{
        //    OwnerList.Copy();
        //    //var root = GetDropItem();
        //    //ListItemClipboard.Instance.SetItem(root.GetCopy(root.Parent, root.OwnerList));
        //}

        public virtual IEnumerable<DelegateCommand> Commands { get { return null; } }

        public void SaveWithChilds(int? maxDeep = null)
        {
            Save();
            if (maxDeep == 0)
                return;
            foreach (var childItem in ChildItems)
            {
                childItem.SaveWithChilds(maxDeep - 1);
            }
        }

        public void Save()
        {
            lock (_syncObject)
                DoSave();
        }

        private readonly object _syncObject = new object();

        public void SaveAsync()
        {
            DoAsync(Save, Changed);
        }

        public void SaveChildArrangementAsync(bool persist)
        {
            DoAsync(() => SaveChildArrangement(persist), Changed);
        }

        public void SaveWithChildsAsync(int? maxDeep = null)
        {
            DoAsync(() => SaveWithChilds(maxDeep), Changed);
        }
        public void SaveChildArrangement(bool persist)
        {
            for (var i = 0; i < ChildItems.Count; i++)
            {
                var childItem = ChildItems[i];
                childItem.SetSortOrder(i + 1);
                if (persist)
                    childItem.Save();
            }
        }

        public void SetSortOrder(double SortOrder)
        {
            lock (_syncObject)
                DoSetSortOrder(SortOrder);
        }

        protected virtual void DoSetSortOrder(double SortOrder) { }

        protected abstract void DoSave();

        public virtual MasterDetailListItemViewModel GetOwnerItem() { return this; }

        public abstract MasterDetailListItemViewModel GetDropItem();

        public ObservableCollection<IComposite> Childs { get { return new ObservableCollection<IComposite>(ChildItems); } }

        public abstract bool AcceptFind(string text);

        public virtual object Backup()
        {
            return null;
        }

        public virtual void RestoreFrom(object backup) { }

        public void Paste(List<MasterDetailListItemViewModel> pastedItems, CommandExecutionInfo executionInfo)
        {
            DoPaste(pastedItems, executionInfo);
        }

        public void CancelPaste(List<MasterDetailListItemViewModel> pastedItems)
        {
            DoCancelPaste(pastedItems);
        }

        protected virtual void DoPaste(List<MasterDetailListItemViewModel> pastedItems, CommandExecutionInfo executionInfo)
        {
            foreach (var pastedItem in pastedItems)
            {
                DropCancelInfo info = new DropCancelInfo(pastedItem);
                DoAcceptDropped(pastedItem, executionInfo, ref info);
            }
        }

        protected virtual void DoCancelPaste(List<MasterDetailListItemViewModel> pastedItems)
        {
            pastedItems.ForEach(item =>
            {
                item.Delete();
                OwnerList.RemoveItem(item);
            });
        }
    }
}