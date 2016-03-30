using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.ListViewModel
{
    public class ExtendedSelectorViewModel<TEntityViewModel, TEntityModel, TEntityListItem>: BaseViewModel
        where TEntityViewModel: EntityViewModel<TEntityModel, TEntityViewModel> 
        where TEntityModel : class, IIdentifiedEntity, new()
        where TEntityListItem: EntityListItem<TEntityViewModel, TEntityModel>
    {
    //    public DelegateCommand SelectEntityCommand { get; set; }

    //    public SelectorViewModel<TEntityViewModel> Selector { get; set; }

    //    public MasterDetailListViewModel<TEntityListItem> ItemsList { get; set; }

    //    public ExtendedSelectorViewModel()
    //    {
    //        SelectEntityCommand = new DelegateCommand(
    //            commandName,
    //            o => true,
    //            o => SelectEntity());
    //        Selector = new SelectorViewModel<TEntityViewModel>();
    //        Selector.SelectedItemChanged += Selector_SelectedItemChanged;
    //        RefreshSelector(Entity.Drawing);
    //    }

    //    void Selector_SelectedItemChanged(object sender, EventArgs e)
    //    {
    //        if (Selector.SelectedItem != null)
    //            UseEntity(Selector.SelectedItem);
    //    }

    //    private void SelectEntity()
    //    {
    //        if (ItemsList == null)
    //            return;
    //        ItemsList.Refresh();
    //        if (_viewService.ShowViewDialog(ItemsList) == true)
    //        {
    //            var item = ItemsList.SelectedItem as TEntityListItem;
    //            if (item != null)
    //            {
    //                var drawing = item.Entity;
    //                UseEntity(drawing);
    //                RefreshSelector(drawing);
    //            }
    //        }
    //    }

    //    private void RefreshSelector(TEntityViewModel drawing)
    //    {
    //        DoAsync(
    //            () => RepositoryFactory.GetDrawingRepository()
    //            .GetAll()
    //            .Select(m => new DrawingViewModel(m, RepositoryFactory))
    //            .ToList(),
    //            res => Selector.SelectorItems = new ObservableCollection<TEntityViewModel>(res));
    //        Selector.SelectorText = drawing == null ? null : drawing.Name;
    //        Selector.SelectedItem = drawing;
    //    }

    //    private void UseEntity(TEntityViewModel entity)
    //    {
    //        Entity.Drawing = entity;
    //    }
    }

    public class RequestDetailListItem : EntityListItem<RequestDetailViewModel, RequestDetail>
    {
        public int SortOrder { get { return IndexInParentCollection + 1; } }
        public DrawingViewModel Drawing { get { return Entity.Drawing; } }

        public DelegateCommand SelectDrawingCommand { get; set; }

        public SelectorViewModel<DrawingViewModel> DrawingSelector { get; set; }

        public RequestDetailListItem(RequestDetailViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
            : base(entity, null, ownerList, repositoryFactory)
        {
            SelectDrawingCommand = new DelegateCommand(
                "Выбрать чертеж",
                o => true,
                o => SelectDrawing());
            DrawingSelector = new SelectorViewModel<DrawingViewModel>();
            DrawingSelector.SelectedItemChanged += DrawingSelector_SelectedItemChanged;
            RefreshSelector(Entity.Drawing);
            Entity.PropertyChanged += (sender, args) => Changed();
        }

        void DrawingSelector_SelectedItemChanged(object sender, EventArgs e)
        {
            if (DrawingSelector.SelectedItem != null)
                UseDrawing(DrawingSelector.SelectedItem);
        }

        private void SelectDrawing()
        {
            var listViewModel = new DrawingList(false, OwnerList.ViewService, RepositoryFactory);
            listViewModel.Refresh();
            if (OwnerList.ViewService.ShowViewDialog(listViewModel) == true)
            {
                var drawingItem = listViewModel.SelectedItem as DrawingListItem;
                if (drawingItem != null)
                {
                    var drawing = drawingItem.Entity;
                    UseDrawing(drawing);
                    RefreshSelector(drawing);
                }
            }
        }

        private void RefreshSelector(DrawingViewModel drawing)
        {
            DoAsync(
                () => RepositoryFactory.GetDrawingRepository()
                .GetAll()
                .Select(m => new DrawingViewModel(m, RepositoryFactory))
                .ToList(),
                res => DrawingSelector.SelectorItems = new ObservableCollection<DrawingViewModel>(res));
            DrawingSelector.SelectorText = drawing == null ? null : drawing.Name;
            DrawingSelector.SelectedItem = drawing;
        }

        private void UseDrawing(DrawingViewModel drawing)
        {
            Entity.Drawing = drawing;
        }

        protected override double DoGetSortOrder()
        {
            return Entity.SortOrder;
        }

        public override bool Delete()
        {
            Entity.DeleteEntity();
            return true;
        }
    }
}
