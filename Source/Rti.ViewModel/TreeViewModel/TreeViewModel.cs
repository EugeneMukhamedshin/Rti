using System;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.TreeViewModel
{
    public class TreeViewModel : BaseViewModel
    {
        private ObservableCollection<ITreeItemViewModel> _rootItems;
        private ITreeItemViewModel _selectedItem;

        protected TreeViewModel(IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
        }

        public ObservableCollection<ITreeItemViewModel> RootItems
        {
            get { return _rootItems; }
            set
            {
                if (_rootItems != null)
                    _rootItems.CollectionChanged -= OnItemsChanged;
                _rootItems = value;
                _rootItems.CollectionChanged += OnItemsChanged;
                OnPropertyChanged();
            }
        }

        public void OnItemsChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (ItemsChanged != null)
                ItemsChanged(sender, e);
        }

        public event NotifyCollectionChangedEventHandler ItemsChanged;

        public virtual void Refresh() { }

        public void OpenItem(ITreeItemViewModel item)
        {
            if (OpenItemAction != null)
                OpenItemAction(item);
        }

        public Action<ITreeItemViewModel> OpenItemAction { get; set; }

        public ITreeItemViewModel SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                if (Equals(value, _selectedItem)) return;
                _selectedItem = value;
                RequerySelectedItemCommands();
                OnPropertyChanged();
            }
        }

        protected virtual void RequerySelectedItemCommands() { }
    }
}