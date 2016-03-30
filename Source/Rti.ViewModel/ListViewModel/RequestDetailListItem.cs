using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class RequestDetailListItem : EntityListItem<RequestDetailViewModel, RequestDetail>
    {
        public int SortOrder { get { return IndexInParentCollection + 1; } }
        public DrawingViewModel Drawing { get { return Entity.Drawing; } }
        public GroupViewModel Group { get { return Entity.Group; } }

        public ExtendedSelectorViewModel<DrawingViewModel, Drawing, DrawingListItem, DrawingList> DrawingSelector { get; set; }
        public ExtendedSelectorViewModel<GroupViewModel, Group, GroupListItem, GroupList> GroupSelector { get; set; }
        public ExtendedSelectorViewModel<MaterialViewModel, Material, MaterialListItem, MaterialList> MaterialSelector { get; set; }
        public ExtendedSelectorViewModel<DetailViewModel, Detail, DetailListItem, DetailList> DetailSelector { get; set; }

        public RequestDetailListItem(RequestDetailViewModel entity, RequestDetailList ownerList, IRepositoryFactory repositoryFactory)
            : base(entity, null, ownerList, repositoryFactory)
        {
            // ReSharper disable RedundantArgumentName
            DrawingSelector = new ExtendedSelectorViewModel<DrawingViewModel, Drawing, DrawingListItem, DrawingList>(
                getEntitiesFunc: () => ownerList.DrawingsSource.Value,
                createListItemFunc: (vm, list) => new DrawingListItem(vm, list, RepositoryFactory),
                createListFunc: () => new DrawingList(false, OwnerList.ViewService, RepositoryFactory),
                getEntityDisplayValueFunc: vm => vm.Name,
                getValueFunc: () => Entity.Drawing,
                setValueFunc: vm => Entity.Drawing = vm,
                selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((DrawingViewModel)o).Name),
                viewService: OwnerList.ViewService);
            GroupSelector = new ExtendedSelectorViewModel<GroupViewModel, Group, GroupListItem, GroupList>(
                getEntitiesFunc: () => ownerList.GroupsSource.Value,
                createListItemFunc: (vm, list) => new GroupListItem(vm, list, RepositoryFactory),
                createListFunc: () => new GroupList(false, OwnerList.ViewService, RepositoryFactory),
                getEntityDisplayValueFunc: vm => vm.Name,
                getValueFunc: () => Entity.Group,
                setValueFunc: vm => Entity.Group = vm,
                selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((GroupViewModel)o).Name),
                viewService: OwnerList.ViewService);
            MaterialSelector = new ExtendedSelectorViewModel<MaterialViewModel, Material, MaterialListItem, MaterialList>(
                getEntitiesFunc: () => ownerList.MaterialsSource.Value,
                createListItemFunc: (vm, list) => new MaterialListItem(vm, list, RepositoryFactory),
                createListFunc: () => new MaterialList(false, OwnerList.ViewService, RepositoryFactory),
                getEntityDisplayValueFunc: vm => vm.Name,
                getValueFunc: () => Entity.Material,
                setValueFunc: vm => Entity.Material = vm,
                selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((MaterialViewModel)o).Name, ((MaterialViewModel)o).Note, ((MaterialViewModel)o).TechConditions),
                viewService: OwnerList.ViewService);
            DetailSelector = new ExtendedSelectorViewModel<DetailViewModel, Detail, DetailListItem, DetailList>(
                getEntitiesFunc: () => ownerList.DetailsSource.Value,
                createListItemFunc: (vm, list) => new DetailListItem(vm, list, RepositoryFactory),
                createListFunc: () => new DetailList(false, OwnerList.ViewService, RepositoryFactory),
                getEntityDisplayValueFunc: vm => vm.Name,
                getValueFunc: () => Entity.Detail,
                setValueFunc: vm => Entity.Detail = vm,
                selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((DetailViewModel)o).Name, ((DetailViewModel)o).Note),
                viewService: OwnerList.ViewService);
            // ReSharper restore RedundantArgumentName
            Entity.PropertyChanged += (sender, args) => Changed();
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
