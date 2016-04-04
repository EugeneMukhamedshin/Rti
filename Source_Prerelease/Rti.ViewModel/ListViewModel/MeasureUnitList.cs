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
    public class MeasureUnitList : MasterDetailListViewModel<MeasureUnitListItem>
    {
        public MeasureUnitList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(MeasureUnitListItem), typeof(MeasureUnitViewModel), typeof(MeasureUnitEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new MeasureUnitViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<MeasureUnitListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<MeasureUnitListItem, MeasureUnitViewModel, MeasureUnit>(newEntity,
                "Добавление единицы измерения", false)
                ? new MeasureUnitListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<MeasureUnitListItem, MeasureUnitViewModel, MeasureUnit>(((MeasureUnitListItem)item).Entity, "Редактирование единицы измерения", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetMeasureUnitRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new MeasureUnitListItem(new MeasureUnitViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}