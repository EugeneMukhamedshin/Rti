﻿using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class MachineListItem : EntityListItem<MachineViewModel, Machine>
    {
        public int SortOrder { get { return         Entity.SortOrder        ; } }
        public string Name { get { return           Entity.Name             ; } }
        public string PlateSize { get { return      Entity.PlateSize        ; } }
        public string InvNumber { get { return      Entity.InvNumber        ; } }
        public int? PlateCount { get { return       Entity.PlateCount       ; } }
        public double? PlatePower { get { return    Entity.PlatePower       ; } }
        public double? EnginePower { get { return   Entity.EnginePower      ; } }
        public double? TotalPower { get { return    Entity.TotalPower       ; } }
        public double? PowerPrice { get { return    Entity.PowerPrice       ; } }
        public double? TimePrice { get { return     Entity.TimePrice        ; } }
        public string Note { get { return           Entity.Note             ; } }

        public MachineListItem(MachineViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
            : base(entity, null, ownerList, repositoryFactory)
        {
        }

        protected override double DoGetSortOrder()
        {
            return Entity.SortOrder;
        }

        public override bool Delete()
        {
            Entity.IsDeleted = true;
            Entity.SaveEntity();
            return true;
        }

        public override bool AcceptFind(string text)
        {
            return text.ContainedIn(Name, Note);
        }
    }
}
