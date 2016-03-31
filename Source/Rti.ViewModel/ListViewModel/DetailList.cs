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
    public class DetailList : MasterDetailListViewModel<DetailListItem>, IWindowCloser
    {
        public DetailList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(DetailListItem), typeof(DetailViewModel), typeof(DetailEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new DetailViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<DetailListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<DetailListItem, DetailViewModel, Detail>(newEntity,
                "Добавление детали", false)
                ? new DetailListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            if (!EditMode)
                CloseWindow(this, true);
            else
                OpenViewModelEditWindow<DetailListItem, DetailViewModel, Detail>(((DetailListItem)item).Entity, "Редактирование детали", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetDetailRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new DetailListItem(new DetailViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }

        public Action<BaseViewModel, bool?> CloseWindow { get; set; }
    }
}