using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public abstract class ObjectList<TEntity> : BaseViewModel
        where TEntity : class
    {
        private ObservableCollection<TEntity> _items = new ObservableCollection<TEntity>();
        private TEntity _selectedItem;

        protected readonly List<Tuple<Type, Type>> TypeMaps = new List<Tuple<Type, Type>>();

        public bool EditMode { get; set; }
        public IViewService ViewService { get; set; }

        public ObservableCollection<TEntity> Items
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

        public TEntity SelectedItem
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

        public ObjectList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
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
            if (ValidateDelete(SelectedItem) && ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Подтвердите удаление")))
            {
                DoDeleteEntity(SelectedItem);
                Items.Remove(SelectedItem);
            }
        }

        protected virtual bool ValidateDelete(TEntity entity)
        {
            return true;
        }

        private void EditEntity(object o)
        {
            if (o is TEntity)
                OpenViewModelEditWindow((TEntity)o, "Изменение", !EditMode);
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

        protected bool OpenViewModelEditWindow(TEntity entityViewModel, string name, bool readOnly)
        {
            var typeMap = TypeMaps.FirstOrDefault(map => map.Item1 == typeof(TEntity));
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
            DoAsync(GetItems, res => Items = new ObservableCollection<TEntity>(res ?? Enumerable.Empty<TEntity>()));
        }

        protected abstract IEnumerable<TEntity> GetItems();

        protected abstract TEntity DoCreateNewEntity();

        protected abstract void DoDeleteEntity(TEntity entity);

        protected abstract bool AcceptFind(TEntity entity, string searchText);

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