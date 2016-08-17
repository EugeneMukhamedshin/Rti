﻿using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class DrawingFlowsheetProcessList : EntityList<DrawingFlowsheetProcessViewModel, DrawingFlowsheetProcess>
    {
        private readonly List<DrawingFlowsheetProcessViewModel> _deletedItems = new List<DrawingFlowsheetProcessViewModel>();

        public DrawingViewModel Drawing { get; set; }

        public DelegateCommand AddFlowsheetProcessCommand { get; set; }
        public DelegateCommand RemoveFlowsheetProcessCommand { get; set; }

        public Lazy<List<MachineViewModel>> MachinesSource { get; private set; }

        public DrawingFlowsheetProcessList(DrawingViewModel drawing, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            Drawing = drawing;
            AddFlowsheetProcessCommand = new DelegateCommand(
              "Добавить строку",
              o => true,
              o => AddFlowsheetProcess());
            RemoveFlowsheetProcessCommand = new DelegateCommand(
                "Удалить строку",
                o => SelectedItem != null,
                o => RemoveFlowsheetProcess());

            TypeMaps.Add(new Tuple<Type, Type>(typeof(DrawingFlowsheetProcessViewModel), typeof(DrawingFlowsheetProcessEdit)));
        }
        private void AddFlowsheetProcess()
        {
            var newItem = DoCreateNewEntity();
            Items.Add(newItem);
        }

        private void RemoveFlowsheetProcess()
        {
            _deletedItems.Add(SelectedItem);
            Items.Remove(SelectedItem);
        }

        public override void Refresh()
        {
            base.Refresh();

            MachinesSource = new Lazy<List<MachineViewModel>>(() => RepositoryFactory.GetMachineRepository().GetAllActive().OrderBy(o => o.SortOrder).Select(o => new MachineViewModel(o, RepositoryFactory)).ToList());
        }

        protected override IEnumerable<DrawingFlowsheetProcessViewModel> GetItems()
        {
            return
                RepositoryFactory.GetDrawingFlowsheetProcessRepository()
                    .GetByDrawingId(Drawing.Id)
                    .OrderBy(o => o.SortOrder)
                    .Select(o => new DrawingFlowsheetProcessViewModel(o, RepositoryFactory))
                    .ToList();
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            if (!Items.Any() && ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Создать стандартный список процессов?")))
                GenerateProcessesForNewFlowsheet();
            foreach (var item in Items)
            {
                item.IsIncludedToSummaryChanged += (s, e) =>
                {
                    if (ProcessChangedCallback != null)
                        ProcessChangedCallback(item);
                    OnSummaryChanged();
                };
            }
        }

        public Action<DrawingFlowsheetProcessViewModel> ProcessChangedCallback;

        private void OnSummaryChanged()
        {
            if (SummaryChanged != null)
                SummaryChanged(this, EventArgs.Empty);
        }

        public event EventHandler SummaryChanged;

        protected override DrawingFlowsheetProcessViewModel DoCreateNewEntity()
        {
            var flowsheetProcess = new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
            {
                Drawing = Drawing,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
            var edit = new DrawingFlowsheetProcessEdit("Добавление процесса", flowsheetProcess, false, ViewService,
                RepositoryFactory);
            if (ViewService.ShowViewDialog(edit) == true)
                return flowsheetProcess;
            return null;
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

        protected override void DoDeleteEntity(DrawingFlowsheetProcessViewModel entity)
        {
            _deletedItems.Add(entity);
        }

        protected override bool AcceptFind(DrawingFlowsheetProcessViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Operation, entity.Executor, entity.VarName);
        }

        protected override void RequeryCommandsOnSelectionChanged()
        {
            base.RequeryCommandsOnSelectionChanged();
            AddFlowsheetProcessCommand.RequeryCanExecute();
            RemoveFlowsheetProcessCommand.RequeryCanExecute();
        }

        public void GenerateProcessesForNewFlowsheet()
        {
            var processTypes = RepositoryFactory.GetProcessRepository().GetAll().ToList();
            var processes = new List<DrawingFlowsheetProcessViewModel>
            {
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 1,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.Preparing),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 2,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.FormCleaning),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 3,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.DieSelecting),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 4,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.Rolling),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 5,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.Extrusion),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 6,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.Programming),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 7,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.Loading),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 8,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(
                            processTypes.Single(p => p.ProcessTypeEnum == ProcessType.CuringOrCutting),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 9,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(processTypes.Single(p => p.ProcessTypeEnum == ProcessType.Unloading),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 10,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(
                            processTypes.Single(p => p.ProcessTypeEnum == ProcessType.TechnologyDowntime),
                            RepositoryFactory)
                },
                new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Drawing = Drawing,
                    SortOrder = 11,
                    IsIncludedToSummary = true,
                    Process =
                        new ProcessViewModel(
                            processTypes.Single(p => p.ProcessTypeEnum == ProcessType.ExecutorDowntime),
                            RepositoryFactory)
                },
                //new DrawingFlowsheetProcessViewModel(null, RepositoryFactory)
                //{
                //    Drawing = Drawing,
                //    SortOrder = 12,
                //    Process =
                //        new ProcessViewModel(
                //            processTypes.Single(p => p.ProcessTypeEnum == ProcessType.SummaryCuttingTime),
                //            RepositoryFactory)
                //}
            };
            Items.ClearAndAddRange(processes);
        }
    }
}
