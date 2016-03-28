using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.TreeViewModel
{
    public class TreeItemViewModel : BaseViewModel, ITreeItemViewModel
    {
        private bool _isExpanded;
        private bool _isSelected;

        protected TreeItemViewModel(ITreeItemViewModel parentItem, IEnumerable<ITreeItemViewModel> childItems, TreeViewModel tree, String name, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            ParentItem = parentItem;
            if (childItems != null)
                Childs = new ObservableCollection<IComposite>(childItems);
            else
                Childs = new ObservableCollection<IComposite>();
            Tree = tree;
            Childs.CollectionChanged += Tree.OnItemsChanged;
            Name = name;
            OpenCommand = new DelegateCommand(
                "Открыть",
                o => true,
                o => Tree.OpenItem(this));
        }

        public TreeViewModel Tree { get; set; }

        public ObservableCollection<IComposite> Childs { get; private set; }

        public virtual string Name { get; private set; }
        public DelegateCommand OpenCommand { get; private set; }

        public ITreeItemViewModel ParentItem { get; set; }

        public virtual bool AcceptFind(string text)
        {
            return Name.ToLower().Contains(text.ToLower());
        }

        public Boolean IsExpanded
        {
            get { return _isExpanded; }
            set
            {
                _isExpanded = value;
                OnPropertyChanged();
            }
        }

        public Boolean IsSelected
        {
            get { return _isSelected; }
            set
            {
                _isSelected = value;
                if (_isSelected)
                    Tree.SelectedItem = this;
                OnPropertyChanged();
            }
        }

        public virtual IEnumerable<DelegateCommand> Commands { get { return null; } }

        public void AcceptDropped(TreeItemViewModel treeItem)
        {
            var accepted = DoAcceptDropped(treeItem);
            if (accepted)
            {
                treeItem.ParentItem.Childs.Remove(treeItem);
                treeItem.ParentItem = this;
                DoAddDropped(treeItem);
                IsExpanded = true;
                treeItem.IsSelected = true;
            }
        }

        protected virtual void DoAddDropped(TreeItemViewModel treeItem)
        {
            Childs.Add(treeItem);
        }

        protected virtual bool DoAcceptDropped(TreeItemViewModel treeItem)
        {
            return false;
        }
    }

    public class EntityTreeItemViewModel<TEntityViewModel, TEntity> : TreeItemViewModel
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel> 
        where TEntity : class, IIdentifiedEntity, new()
    {
        public TEntityViewModel Entity { get; set; }

        public EntityTreeItemViewModel(TEntityViewModel entity, ITreeItemViewModel parentItem, IEnumerable<ITreeItemViewModel> childItems, TreeViewModel tree, String name, IRepositoryFactory repositoryFactory)
            : base(parentItem, childItems, tree, name, repositoryFactory)
        {
            Entity = entity;
            Entity.PropertyChanged += Entity_PropertyChanged;
        }

        void Entity_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            OnEntityChanged();
        }

        protected virtual void OnEntityChanged() { }

        public IEnumerable<ITreeItemViewModel> GetAncestors()
        {
            var parent = ParentItem;
            while (parent != null)
            {
                yield return parent;
                parent = parent.ParentItem;
            }
        }
    }
}
