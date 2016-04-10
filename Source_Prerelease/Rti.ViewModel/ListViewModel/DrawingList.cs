using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class DrawingList : MasterDetailListViewModel<DrawingListItem>, IWindowCloser
    {
        public DrawingList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            //TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(DrawingListItem), typeof(DrawingViewModel), typeof(DrawingEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new DrawingViewModel(null, RepositoryFactory)
            {
                Name = "Новый чертеж"
            };
            return OpenViewModelEditWindow<DrawingListItem, DrawingViewModel, Drawing>(newEntity,
                "Добавление чертежа", false)
                ? new DrawingListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            if (!EditMode)
                CloseWindow(this, true);
            else
                OpenViewModelEditWindow<DrawingListItem, DrawingViewModel, Drawing>(((DrawingListItem) item).Entity,
                    "Редактирование чертежа", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetDrawingRepository()
                        .GetAll()
                        .Select(
                            m =>
                                new DrawingListItem(new DrawingViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }

        public Action<BaseViewModel, bool?> CloseWindow { get; set; }
    }
}