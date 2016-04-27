using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    //public class RequestDetailListItem : EntityListItem<RequestDetailViewModel, RequestDetail>
    //{
    //    public int SortOrder { get { return IndexInParentCollection + 1; } }

    //    public Existance? EquipmentExistance
    //    {
    //        get { return Entity.EquipmentExistance == null ? null : (Existance?) Entity.EquipmentExistance; }
    //        set { Entity.EquipmentExistance = (int?)value; }
    //    }

    //    public string AdditionalInfo
    //    {
    //        get { return Entity.AdditionalInfo; }
    //        set { Entity.AdditionalInfo = value; }
    //    }

    //    public decimal Count
    //    {
    //        get { return Entity.Count; }
    //        set
    //        {
    //            Entity.Count = value; 
    //            Sum = Price * Count;
    //        }
    //    }

    //    public decimal Price
    //    {
    //        get { return Entity.Price; }
    //        set
    //        {
    //            Entity.Price = value;
    //            Sum = Price*Count;
    //        }
    //    }

    //    public decimal? CalculationPrice
    //    {
    //        get { return Entity.CalculationPrice; }
    //        set { Entity.CalculationPrice = value; }
    //    }

    //    public decimal Sum
    //    {
    //        get { return Entity.Sum; }
    //        set
    //        {
    //            Entity.Sum = value;
    //            OnPropertyChanged();
    //        }
    //    }

    //    public string Note
    //    {
    //        get { return Entity.Note; }
    //        set { Entity.Note = value; }
    //    }

    //    public ExtendedSelectorViewModel<DrawingViewModel, Drawing, DrawingListItem, DrawingList> DrawingSelector { get; set; }
    //    public ExtendedSelectorViewModel<GroupViewModel, Group, GroupListItem, GroupList> GroupSelector { get; set; }
    //    public ExtendedSelectorViewModel<MaterialViewModel, Material, MaterialListItem, MaterialList> MaterialSelector { get; set; }
    //    public ExtendedSelectorViewModel<DetailViewModel, Detail, DetailListItem, DetailList> DetailSelector { get; set; }

    //    public IEnumerable<Existance> Existances { get { return Enum.GetValues(typeof (Existance)).Cast<Existance>(); } }

    //    public RequestDetailListItem(RequestDetailViewModel entity, RequestDetailList ownerList, IRepositoryFactory repositoryFactory)
    //        : base(entity, null, ownerList, repositoryFactory)
    //    {
    //        // ReSharper disable RedundantArgumentName
    //        DrawingSelector = new ExtendedSelectorViewModel<DrawingViewModel, Drawing, DrawingListItem, DrawingList>(
    //            getEntitiesFunc: () => ownerList.DrawingsSource.Value,
    //            createListItemFunc: (vm, list) => new DrawingListItem(vm, list, RepositoryFactory),
    //            createListFunc: () => new DrawingList(false, OwnerList.ViewService, RepositoryFactory),
    //            getEntityDisplayValueFunc: vm => vm.Name,
    //            getValueFunc: () => Entity.Drawing,
    //            setValueFunc: vm => Entity.Drawing = vm,
    //            selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((DrawingViewModel)o).Name),
    //            viewService: OwnerList.ViewService);
    //        GroupSelector = new ExtendedSelectorViewModel<GroupViewModel, Group, GroupListItem, GroupList>(
    //            getEntitiesFunc: () => ownerList.GroupsSource.Value,
    //            createListItemFunc: (vm, list) => new GroupListItem(vm, list, RepositoryFactory),
    //            createListFunc: () => new GroupList(false, OwnerList.ViewService, RepositoryFactory),
    //            getEntityDisplayValueFunc: vm => vm.Name,
    //            getValueFunc: () => Entity.Group,
    //            setValueFunc: vm => Entity.Group = vm,
    //            selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((GroupViewModel)o).Name),
    //            viewService: OwnerList.ViewService);
    //        MaterialSelector = new ExtendedSelectorViewModel<MaterialViewModel, Material, MaterialListItem, MaterialList>(
    //            getEntitiesFunc: () => ownerList.MaterialsSource.Value,
    //            createListItemFunc: (vm, list) => new MaterialListItem(vm, list, RepositoryFactory),
    //            createListFunc: () => new MaterialList(false, OwnerList.ViewService, RepositoryFactory),
    //            getEntityDisplayValueFunc: vm => vm.Name,
    //            getValueFunc: () => Entity.Material,
    //            setValueFunc: vm => Entity.Material = vm,
    //            selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((MaterialViewModel)o).Name, ((MaterialViewModel)o).Note, ((MaterialViewModel)o).TechConditions),
    //            viewService: OwnerList.ViewService);
    //        DetailSelector = new ExtendedSelectorViewModel<DetailViewModel, Detail, DetailListItem, DetailList>(
    //            getEntitiesFunc: () => ownerList.DetailsSource.Value,
    //            createListItemFunc: (vm, list) => new DetailListItem(vm, list, RepositoryFactory),
    //            createListFunc: () => new DetailList(false, OwnerList.ViewService, RepositoryFactory),
    //            getEntityDisplayValueFunc: vm => vm.Name,
    //            getValueFunc: () => Entity.Detail,
    //            setValueFunc: vm => Entity.Detail = vm,
    //            selectorItemFilterFunc: (filter, o) => filter.ContainedIn(((DetailViewModel)o).Name, ((DetailViewModel)o).Note),
    //            viewService: OwnerList.ViewService);
    //        // ReSharper restore RedundantArgumentName
    //        Entity.PropertyChanged += (sender, args) => Changed();
    //    }

    //    protected override double DoGetSortOrder()
    //    {
    //        return Entity.SortOrder;
    //    }

    //    public override bool Delete()
    //    {
    //        Entity.DeleteEntity();
    //        return true;
    //    }
    //}
}
