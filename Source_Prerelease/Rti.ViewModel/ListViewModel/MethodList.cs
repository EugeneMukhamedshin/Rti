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
    public class MethodList : MasterDetailListViewModel<MethodListItem>
    {
        public MethodList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(MethodListItem), typeof(MethodViewModel), typeof(MethodEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new MethodViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<MethodListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<MethodListItem, MethodViewModel, Method>(newEntity,
                "Добавление способа изготовления", false)
                ? new MethodListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<MethodListItem, MethodViewModel, Method>(((MethodListItem)item).Entity, "Редактирование способа изготовления", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetMethodRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new MethodListItem(new MethodViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}