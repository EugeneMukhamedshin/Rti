using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class FlowsheetMachineList: EntityList<FlowsheetMachineViewModel, FlowsheetMachine>
    {
        private readonly List<FlowsheetMachineViewModel> _deletedItems = new List<FlowsheetMachineViewModel>();

        public FlowsheetViewModel Flowsheet { get; set; }

        public DelegateCommand AddFlowsheetMachineCommand { get; set; }
        public DelegateCommand RemoveFlowsheetMachineCommand { get; set; }

        public Lazy<List<MachineViewModel>> MachinesSource { get; private set; }

        public FlowsheetMachineList(FlowsheetViewModel flowsheet, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            Flowsheet = flowsheet;
            AddFlowsheetMachineCommand = new DelegateCommand(
              "Добавить строку",
              o => true,
              o => AddFlowsheetMachine());
            RemoveFlowsheetMachineCommand = new DelegateCommand(
                "Удалить строку",
                o => SelectedItem != null,
                o => RemoveFlowsheetMachine());
        }
        private void AddFlowsheetMachine()
        {
            var newItem = new FlowsheetMachineViewModel(null, RepositoryFactory)
            {
                Flowsheet = Flowsheet,
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
            Items.Add(newItem);
        }

        private void RemoveFlowsheetMachine()
        {
            _deletedItems.Add(SelectedItem);
            Items.Remove(SelectedItem);
        }

        public override void Refresh()
        {
            base.Refresh();

            MachinesSource = new Lazy<List<MachineViewModel>>(() => RepositoryFactory.GetMachineRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new MachineViewModel(o, RepositoryFactory)).ToList());
        }

        protected override IEnumerable<FlowsheetMachineViewModel> GetItems()
        {
            return
                RepositoryFactory.GetFlowsheetMachineRepository()
                    .GetByFlowsheetId(Flowsheet.Id)
                    .OrderBy(o => o.SortOrder)
                    .Select(o => new FlowsheetMachineViewModel(o, RepositoryFactory))
                    .ToList();
        }

        protected override FlowsheetMachineViewModel DoCreateNewEntity()
        {
            return new FlowsheetMachineViewModel(null, RepositoryFactory)
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

        protected override void DoDeleteEntity(FlowsheetMachineViewModel entity)
        {
            _deletedItems.Add(entity);
        }

        protected override bool AcceptFind(FlowsheetMachineViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Machine.Name, entity.Machine.SortOrder);
        }

        protected override void RequeryCommandsOnSelectionChanged()
        {
            base.RequeryCommandsOnSelectionChanged();
            AddFlowsheetMachineCommand.RequeryCanExecute();
            RemoveFlowsheetMachineCommand.RequeryCanExecute();
        }
    }
}
