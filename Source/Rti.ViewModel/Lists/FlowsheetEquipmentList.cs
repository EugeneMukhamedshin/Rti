using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class FlowsheetEquipmentList: EntityList<FlowsheetEquipmentViewModel, FlowsheetEquipment>
    {
        private readonly List<FlowsheetEquipmentViewModel> _deletedItems = new List<FlowsheetEquipmentViewModel>();

        public FlowsheetViewModel Flowsheet { get; set; }

        public FlowsheetEquipmentList(FlowsheetViewModel flowsheet, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            Flowsheet = flowsheet;
        }

        protected override IEnumerable<FlowsheetEquipmentViewModel> GetItems()
        {
            return
                RepositoryFactory.GetFlowsheetEquipmentRepository()
                    .GetByFlowsheetId(Flowsheet.Id)
                    .OrderBy(o => o.SortOrder)
                    .Select(o => new FlowsheetEquipmentViewModel(o, RepositoryFactory))
                    .ToList();
        }

        protected override FlowsheetEquipmentViewModel DoCreateNewEntity()
        {
            return new FlowsheetEquipmentViewModel(null, RepositoryFactory)
            {
                Flowsheet = Flowsheet,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
        }

        public void SaveChanges()
        {
            foreach (var deletedItem in _deletedItems)
            {
                deletedItem.DeleteEntity();
            }
            _deletedItems.Clear();
            foreach (var item in Items)
            {
                if (item.IsChanged || item.IsNewEntity)
                    item.SaveEntity();
            }
        }

        protected override void DoDeleteEntity(FlowsheetEquipmentViewModel entity)
        {
            _deletedItems.Add(entity);
        }

        protected override bool AcceptFind(FlowsheetEquipmentViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Equipment.Name, entity.Equipment.SortOrder);
        }
    }
}
