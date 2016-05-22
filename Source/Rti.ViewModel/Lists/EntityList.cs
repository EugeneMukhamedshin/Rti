using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public abstract class EntityList<TEntityViewModel, TEntity> : BaseViewModel
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel> where TEntity : class, IIdentifiedEntity, new()
    {
        private ObservableCollection<TEntityViewModel> _items = new ObservableCollection<TEntityViewModel>();
        private TEntityViewModel _selectedItem;

        protected readonly List<Tuple<Type, Type>> TypeMaps = new List<Tuple<Type, Type>>();

        public bool EditMode { get; set; }
        public IViewService ViewService { get; set; }

        public ObservableCollection<TEntityViewModel> Items
        {
            get { return _items; }
            private set
            {
                if (Equals(value, _items)) return;
                _items = value;
                OnItemsChanged();
                OnPropertyChanged();
            }
        }

        protected virtual void OnItemsChanged()
        {
            
        }

        public TEntityViewModel SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                OnSelectedItemChanging();
                _selectedItem = value;
                OnSelectedItemChanged();
                OnPropertyChanged();
                RequeryCommandsOnSelectionChanged();
            }
        }

        public DelegateCommand AddEntityCommand { get; private set; }
        public DelegateCommand DeleteEntityCommand { get; private set; }
        public DelegateCommand EditEntityCommand { get; private set; }
        public DelegateCommand FindEntityCommand { get; private set; }

        public EntityList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
            EditMode = editMode;
            ViewService = viewService;

            AddEntityCommand = new DelegateCommand(
                "Добавить",
                o => EditMode,
                o => AddEntity());
            DeleteEntityCommand = new DelegateCommand(
                "Удалить",
                o => EditMode && SelectedItem != null,
                o => DeleteEntity());
            EditEntityCommand = new DelegateCommand(
                "Изменить",
                o => o != null,
                EditEntity);
            FindEntityCommand = new DelegateCommand(
                "Найти",
                o => true,
                Find);
        }

        private void AddEntity()
        {
            var entity = DoCreateNewEntity();
            if (OpenViewModelEditWindow(entity, "Новый элемент", false) == true)
                Items.Add(entity);
        }

        private void DeleteEntity()
        {
            if (SelectedItem == null)
                return;
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Подтвердите удаление")) == true)
            {
                DoDeleteEntity(SelectedItem);
                Items.Remove(SelectedItem);
            }
        }

        private void EditEntity(object o)
        {
            if (o is TEntityViewModel)
                OpenViewModelEditWindow((TEntityViewModel)o, "Изменение", !EditMode);
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
            var items = Items.SkipWhile(i => !fromStart && SelectedItem != null && i != SelectedItem).Skip(!fromStart && SelectedItem != null ? 1 : 0);
            foreach (var item in items)
            {
                var accepted = AcceptFind(item, text);
                if (accepted)
                {
                    SelectedItem = item;
                    return true;
                }
            }
            return false;
        }

        protected bool OpenViewModelEditWindow(TEntityViewModel entityViewModel, string name, bool readOnly)
        {
            var typeMap = TypeMaps.FirstOrDefault(map => map.Item1 == typeof(TEntityViewModel));
            if (typeMap == null)
                throw new InvalidOperationException("Не найдена информация о добавляемой сущности");
            var editViewModel =
                (BaseViewModel)
                    Activator.CreateInstance(typeMap.Item2, name, entityViewModel, readOnly, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            var result = ViewService.ShowViewDialog(editViewModel) == true;
            if (!result) return false;
            return true;
        }

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(GetItems, res => Items = new ObservableCollection<TEntityViewModel>(res ?? Enumerable.Empty<TEntityViewModel>()));
        }

        protected abstract IEnumerable<TEntityViewModel> GetItems();

        protected abstract TEntityViewModel DoCreateNewEntity();

        protected abstract void DoDeleteEntity(TEntityViewModel entity);

        protected abstract bool AcceptFind(TEntityViewModel entity, string searchText);

        protected virtual void RequeryCommandsOnSelectionChanged()
        {
            AddEntityCommand.RequeryCanExecute();
            DeleteEntityCommand.RequeryCanExecute();
            EditEntityCommand.RequeryCanExecute();
        }

        protected virtual void OnSelectedItemChanging() { }

        protected virtual void OnSelectedItemChanged() { }
    }
}
