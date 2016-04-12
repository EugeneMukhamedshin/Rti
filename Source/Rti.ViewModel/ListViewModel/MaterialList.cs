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
    public class MaterialList : MasterDetailListViewModel<MaterialListItem>, IClosable
    {
        public MaterialList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(MaterialListItem), typeof(MaterialViewModel), typeof(MaterialEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new MaterialViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<MaterialListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<MaterialListItem, MaterialViewModel, Material>(newEntity,
                "Добавление материала", false)
                ? new MaterialListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            if (!EditMode)
                Close(true);
            else
                OpenViewModelEditWindow<MaterialListItem, MaterialViewModel, Material>(((MaterialListItem)item).Entity, "Редактирование материала", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetMaterialRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new MaterialListItem(new MaterialViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}