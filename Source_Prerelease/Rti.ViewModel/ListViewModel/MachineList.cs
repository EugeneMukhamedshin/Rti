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
    public class MachineList : MasterDetailListViewModel<MachineListItem>
    {
        public MachineList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(MachineListItem), typeof(MachineViewModel), typeof(MachineEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new MachineViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<MachineListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<MachineListItem, MachineViewModel, Machine>(newEntity,
                "Добавление оборудования", false)
                ? new MachineListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<MachineListItem, MachineViewModel, Machine>(((MachineListItem)item).Entity, "Редактирование оборудования", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetMachineRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new MachineListItem(new MachineViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}