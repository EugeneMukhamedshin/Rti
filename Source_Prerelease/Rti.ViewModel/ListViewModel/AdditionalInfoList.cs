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
    public class AdditionalInfoList : MasterDetailListViewModel<AdditionalInfoListItem>
    {
        public AdditionalInfoList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(AdditionalInfoListItem), typeof(AdditionalInfoViewModel), typeof(AdditionalInfoEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new AdditionalInfoViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<AdditionalInfoListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<AdditionalInfoListItem, AdditionalInfoViewModel, AdditionalInfo>(newEntity,
                "Добавление доп. информации", false)
                ? new AdditionalInfoListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<AdditionalInfoListItem, AdditionalInfoViewModel, AdditionalInfo>(((AdditionalInfoListItem)item).Entity, "Редактирование доп. информации", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetAdditionalInfoRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new AdditionalInfoListItem(new AdditionalInfoViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}