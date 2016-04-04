using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class RequestDetailList : MasterDetailListViewModel<RequestDetailListItem>
    {
        private List<RequestDetailListItem> _deletedItems = new List<RequestDetailListItem>();

        public RequestViewModel Request { get; private set; }
        public Lazy<List<DrawingViewModel>> DrawingsSource { get; private set; }
        public Lazy<List<GroupViewModel>> GroupsSource { get; set; }
        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }
        public Lazy<List<DetailViewModel>> DetailsSource { get; set; }

        public RequestDetailList(RequestViewModel request, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            if (request == null)
                throw new ArgumentNullException("request");
            Request = request;

            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAll().OrderBy(o => o.Id).Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList());
            GroupsSource = new Lazy<List<GroupViewModel>>(() => RepositoryFactory.GetGroupRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new GroupViewModel(o, RepositoryFactory)).ToList());
            MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new MaterialViewModel(o, RepositoryFactory)).ToList());
            DetailsSource = new Lazy<List<DetailViewModel>>(() => RepositoryFactory.GetDetailRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new DetailViewModel(o, RepositoryFactory)).ToList());
            //TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(RequestDetailListItem), typeof(RequestDetailViewModel), typeof(RequestDetailEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new RequestDetailViewModel(null, RepositoryFactory)
            {
                Request = Request,
                SortOrder = RootItems.Any() ? RootItems.Cast<RequestDetailListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return new RequestDetailListItem(newEntity, this, RepositoryFactory);
            //return OpenViewModelEditWindow<RequestDetailListItem, RequestDetailViewModel, RequestDetail>(newEntity,
            //    "Добавление строки заявки", false)
            //    ? new RequestDetailListItem(newEntity, this, RepositoryFactory)
            //    : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            //OpenViewModelEditWindow<RequestDetailListItem, RequestDetailViewModel, RequestDetail>(((RequestDetailListItem)item).Entity, "Редактирование строки заявки", !editMode);
            return true;
        }

        protected override bool DoDeleteItem(ref MasterDetailListItemViewModel item, bool askConfirmation)
        {
            _deletedItems.Add((RequestDetailListItem)item);
            return true;
        }

        public override void Refresh()
        {
            DoAsync(() => RepositoryFactory.GetRequestDetailRepository()
                    .GetByRequestId(Request.Id)
                    .OrderBy(o => o.SortOrder)
                    .Select(
                        m =>
                            new RequestDetailListItem(new RequestDetailViewModel(m, RepositoryFactory), this,
                                RepositoryFactory)),
                res => RootItems = new ObservableCollection<MasterDetailListItemViewModel>(res));
        }

        public void SaveChanges()
        {
            foreach (var deletedItem in _deletedItems)
            {
                deletedItem.Delete();
            }
            foreach (var item in RootItems.Cast<RequestDetailListItem>())
            {
                if (item.Entity.IsNewEntity || item.Entity.IsChanged)
                    item.Entity.SaveEntity();
            }
        }
    }
}