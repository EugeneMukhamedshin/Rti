using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.ListViewModel
{
    public interface IExtendedSelectorViewModel
    {
        Func<string, object, bool> SelectorItemFilterFunc { get; set; }
    }

    public class ExtendedSelectorViewModel<TEntityViewModel, TEntityModel, TEntityListItem, TEntityList>: BaseViewModel, IExtendedSelectorViewModel
        where TEntityViewModel: EntityViewModel<TEntityModel, TEntityViewModel> 
        where TEntityModel : class, IIdentifiedEntity, new()
        where TEntityListItem: EntityListItem<TEntityViewModel, TEntityModel>
        where TEntityList: MasterDetailListViewModel<TEntityListItem>
    {
        public Func<string, object, bool> SelectorItemFilterFunc { get; set; }
        private readonly Func<List<TEntityViewModel>> _getEntitiesFunc;
        private readonly Func<TEntityViewModel, TEntityList, TEntityListItem> _createListItemFunc;
        private readonly Func<TEntityList> _createListFunc;
        private readonly Func<TEntityViewModel, string> _getEntityDisplayValueFunc;
        private readonly Func<TEntityViewModel> _getValueFunc;
        private readonly Action<TEntityViewModel> _setValueFunc;
        private readonly IViewService _viewService;
        private List<TEntityViewModel> _items = new List<TEntityViewModel>();

        private TEntityViewModel _selectedItem;
        private string _selectorText;
        private ObservableCollection<TEntityViewModel> _selectorItems;

        public ObservableCollection<TEntityViewModel> SelectorItems
        {
            get { return _selectorItems; }
            set
            {
                if (Equals(value, _selectorItems)) return;
                _selectorItems = value;
                OnPropertyChanged();
            }
        }

        public TEntityViewModel SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                if (Equals(value, _selectedItem)) return;
                _selectedItem = value;
                OnSelectedItemChanged();
                OnPropertyChanged();
            }
        }

        public string SelectorText
        {
            get { return _selectorText; }
            set
            {
                if (value == _selectorText) return;
                _selectorText = value;
                OnSelectorTextChanged();
                OnPropertyChanged();
            }
        }

        public event EventHandler SelectedItemChanged;
        public event EventHandler SelectorTextChanged;

        private void OnSelectedItemChanged()
        {
            if (SelectedItem != null)
                UseEntity(SelectedItem);
            if (SelectedItemChanged != null)
                SelectedItemChanged(this, EventArgs.Empty);
        }

        private void OnSelectorTextChanged()
        {
            if (SelectorTextChanged != null)
                SelectorTextChanged(this, EventArgs.Empty);
        }

        public DelegateCommand SelectEntityCommand { get; set; }

        public TEntityList ItemsList { get; set; }

        public ExtendedSelectorViewModel(
            Func<List<TEntityViewModel>> getEntitiesFunc, 
            Func<TEntityViewModel, TEntityList, TEntityListItem> createListItemFunc,
            Func<TEntityList> createListFunc,
            Func<TEntityViewModel, string> getEntityDisplayValueFunc,
            Func<TEntityViewModel> getValueFunc,
            Action<TEntityViewModel> setValueFunc,
            Func<string, object, bool> selectorItemFilterFunc,
            IViewService viewService)
        {
            SelectorItemFilterFunc = selectorItemFilterFunc;
            _getEntitiesFunc = getEntitiesFunc;
            _createListItemFunc = createListItemFunc;
            _createListFunc = createListFunc;
            _getEntityDisplayValueFunc = getEntityDisplayValueFunc;
            _getValueFunc = getValueFunc;
            _setValueFunc = setValueFunc;
            _viewService = viewService;
            SelectEntityCommand = new DelegateCommand(
                "Выбор",
                o => true,
                o => SelectEntity());
            RefreshSelector(_getValueFunc());
        }

        private void SelectEntity()
        {
            if (ItemsList == null)
                ItemsList = _createListFunc();
            ItemsList.RootItems = new ObservableCollection<MasterDetailListItemViewModel>(_items.Select(i => _createListItemFunc(i, ItemsList)));
            if (SelectedItem != null)
                ItemsList.SelectedItem =
                    ItemsList.RootItems.Cast<TEntityListItem>()
                        .SingleOrDefault(i => Equals(SelectedItem.Entity.Id, i.Entity.Entity.Id));
            if (_viewService.ShowViewDialog(ItemsList) == true)
            {
                var item = ItemsList.SelectedItem as TEntityListItem;
                if (item != null)
                {
                    var drawing = item.Entity;
                    UseEntity(drawing);
                    RefreshSelector(drawing);
                }
            }
        }

        private void RefreshSelector(TEntityViewModel entity)
        {
            DoAsync(
                () => _getEntitiesFunc(),
                res =>
                {
                    _items = res;
                    SelectorItems = new ObservableCollection<TEntityViewModel>(_items);
                    SelectorText = entity == null ? null : _getEntityDisplayValueFunc(entity);
                    SelectedItem = entity;
                });
        }

        private void UseEntity(TEntityViewModel entity)
        {
            _setValueFunc(entity);
        }
    }
}