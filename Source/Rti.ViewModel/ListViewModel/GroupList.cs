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
    public class GroupList : MasterDetailListViewModel<GroupListItem>, IWindowCloser
    {
        public GroupList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(GroupListItem), typeof(GroupViewModel), typeof(GroupEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new GroupViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<GroupListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<GroupListItem, GroupViewModel, Group>(newEntity,
                "Добавление группы", false)
                ? new GroupListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            if (!EditMode)
                CloseWindow(this, true);
            else
                OpenViewModelEditWindow<GroupListItem, GroupViewModel, Group>(((GroupListItem)item).Entity, "Редактирование группы", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetGroupRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new GroupListItem(new GroupViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }

        public Action<BaseViewModel, bool?> CloseWindow { get; set; }
    }
}