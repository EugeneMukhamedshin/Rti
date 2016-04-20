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
    //public class EquipmentList : MasterDetailListViewModel<EquipmentListItem>
    //{
    //    public EquipmentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
    //        : base(editMode, viewService, repositoryFactory, historyContext)
    //    {
    //        TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(EquipmentListItem), typeof(EquipmentViewModel), typeof(EquipmentEdit)));
    //    }

    //    protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
    //        object param)
    //    {
    //        parentItem = null;
    //        var newEntity = new EquipmentViewModel(null, RepositoryFactory)
    //        {
    //            SortOrder = RootItems.Any() ? RootItems.Cast<EquipmentListItem>().Max(item => item.SortOrder) + 1 : 1
    //        };
    //        return OpenViewModelEditWindow<EquipmentListItem, EquipmentViewModel, Equipment>(newEntity,
    //            "Добавление оснастки", false)
    //            ? new EquipmentListItem(newEntity, this, RepositoryFactory)
    //            : null;
    //    }

    //    protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
    //    {
    //        OpenViewModelEditWindow<EquipmentListItem, EquipmentViewModel, Equipment>(((EquipmentListItem)item).Entity, "Редактирование оснастки", !editMode);
    //        return true;
    //    }

    //    public override void Refresh()
    //    {
    //        RootItems =
    //            new ObservableCollection<MasterDetailListItemViewModel>(
    //                RepositoryFactory.GetEquipmentRepository()
    //                    .GetAllActive()
    //                    .Select(
    //                        m =>
    //                            new EquipmentListItem(new EquipmentViewModel(m, RepositoryFactory), this, RepositoryFactory)));
    //    }
    //}
}