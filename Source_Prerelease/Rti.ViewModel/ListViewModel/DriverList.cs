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
    public class DriverList : MasterDetailListViewModel<DriverListItem>
    {
        public DriverList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(DriverListItem), typeof(DriverViewModel), typeof(DriverEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new DriverViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<DriverListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<DriverListItem, DriverViewModel, Driver>(newEntity,
                "Добавление водителя", false)
                ? new DriverListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<DriverListItem, DriverViewModel, Driver>(((DriverListItem)item).Entity, "Редактирование водителя", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetDriverRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new DriverListItem(new DriverViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}