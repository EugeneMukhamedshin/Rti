using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class ContragentList : MasterDetailListViewModel<ContragentListItem>, IClosable
    {
        private readonly int _listType;

        public string Name
        {
            get { return _listType == 0 ? "Заказчики" : "Поставщики"; }
        }

        public ContragentList(int listType, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            _listType = listType;
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(ContragentListItem), typeof(ContragentViewModel), typeof(ContragentEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new ContragentViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<ContragentListItem>().Max(item => item.SortOrder) + 1 : 1,
                Type = _listType
            };
            return OpenViewModelEditWindow<ContragentListItem, ContragentViewModel, Contragent>(newEntity,
                string.Format("Добавление {0}", _listType == 0 ? "заказчика" : "поставщика"), false)
                ? new ContragentListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            if (!EditMode)
                Close(true);
            else
            {
                OpenViewModelEditWindow<ContragentListItem, ContragentViewModel, Contragent>(
                    ((ContragentListItem) item).Entity,
                    string.Format("Редактирование {0}", _listType == 0 ? "заказчика" : "поставщика"), !editMode);
            }
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetContragentRepository()
                        .GetAllActive(_listType)
                        .Select(
                            m =>
                                new ContragentListItem(new ContragentViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}