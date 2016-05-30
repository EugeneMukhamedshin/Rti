using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class DrawingFlowsheetMachineList: EntityList<DrawingFlowsheetMachineViewModel, DrawingFlowsheetMachine>
    {
        private readonly List<DrawingFlowsheetMachineViewModel> _deletedItems = new List<DrawingFlowsheetMachineViewModel>();

        public DrawingViewModel Drawing { get; set; }

        public DelegateCommand AddFlowsheetMachineCommand { get; set; }
        public DelegateCommand RemoveFlowsheetMachineCommand { get; set; }

        public Lazy<List<MachineViewModel>> MachinesSource { get; private set; }

        public DrawingFlowsheetMachineList(DrawingViewModel drawing, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            Drawing = drawing;
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
            var newItem = DoCreateNewEntity();
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

        protected override IEnumerable<DrawingFlowsheetMachineViewModel> GetItems()
        {
            return
                RepositoryFactory.GetDrawingFlowsheetMachineRepository()
                    .GetByDrawingId(Drawing.Id)
                    .OrderBy(o => o.SortOrder)
                    .Select(o => new DrawingFlowsheetMachineViewModel(o, RepositoryFactory))
                    .ToList();
        }

        protected override DrawingFlowsheetMachineViewModel DoCreateNewEntity()
        {
            return new DrawingFlowsheetMachineViewModel(null, RepositoryFactory)
            {
                Drawing = Drawing,
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

        protected override void DoDeleteEntity(DrawingFlowsheetMachineViewModel entity)
        {
            _deletedItems.Add(entity);
        }

        protected override bool AcceptFind(DrawingFlowsheetMachineViewModel entity, string searchText)
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
