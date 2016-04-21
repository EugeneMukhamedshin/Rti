using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class FlowsheetProcessList: EntityList<FlowsheetProcessViewModel, FlowsheetProcess>
    {
        private readonly List<FlowsheetProcessViewModel> _deletedItems = new List<FlowsheetProcessViewModel>();

        public FlowsheetViewModel Flowsheet { get; set; }

        public DelegateCommand AddFlowsheetProcessCommand { get; set; }
        public DelegateCommand RemoveFlowsheetProcessCommand { get; set; }

        public Lazy<List<MachineViewModel>> MachinesSource { get; private set; }

        public FlowsheetProcessList(FlowsheetViewModel flowsheet, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            Flowsheet = flowsheet;
            AddFlowsheetProcessCommand = new DelegateCommand(
              "Добавить строку",
              o => true,
              o => AddFlowsheetProcess());
            RemoveFlowsheetProcessCommand = new DelegateCommand(
                "Удалить строку",
                o => SelectedItem != null,
                o => RemoveFlowsheetProcess());
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

        protected override IEnumerable<FlowsheetProcessViewModel> GetItems()
        {
            return
                RepositoryFactory.GetFlowsheetProcessRepository()
                    .GetByFlowsheetId(Flowsheet.Id)
                    .OrderBy(o => o.SortOrder)
                    .Select(o => new FlowsheetProcessViewModel(o, RepositoryFactory))
                    .ToList();
        }

        protected override FlowsheetProcessViewModel DoCreateNewEntity()
        {
            return new FlowsheetProcessViewModel(null, RepositoryFactory)
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

        protected override void DoDeleteEntity(FlowsheetProcessViewModel entity)
        {
            _deletedItems.Add(entity);
        }

        protected override bool AcceptFind(FlowsheetProcessViewModel entity, string searchText)
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
            var processes = new List<FlowsheetProcessViewModel>
            {
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 1,
                    Name = "Подготовительное",
                    Operation = "Получить прессформу",
                    Executor = "Технолог",
                    VarName = "tпод",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 2,
                    Name = "Чистка/ремонт формы",
                    Operation = "Чистка/ремонт формы",
                    Executor = "Токарь",
                    VarName = "tч",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 3,

                    Name = "Фильера",
                    Operation = "Подбор фильеры и рез смеси",
                    Executor = "Технолог",
                    VarName = "tф",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 4,
                    Name = "Вальцовка",
                    Operation = "Подготовить смесь",
                    Executor = "Вальцовщик",
                    VarName = "tвал",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 5,
                    Name = "Шприцевание",
                    Operation = "Выполнить заготовку",
                    Executor = "Вальцовщик",
                    VarName = "tшпр",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 6,
                    Name = "Программирование",
                    Operation = "Работа технолога перед загрузкой",
                    Executor = "Технолог",
                    VarName = "tтехн",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 7,
                    Name = "Загрузка",
                    Operation = "Загрузить в прессформу",
                    Executor = "Прессовщик",
                    VarName = "tзаг",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 8,
                    Name = "Вулканизация/вырубка",
                    Operation = "Вулканизировать/вырубить",
                    Executor = "Прессовщик",
                    VarName = "tв",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 9,
                    Name = "Выгрузка",
                    Operation = "Выгрузить",
                    Executor = "Прессовщик",
                    VarName = "tвыгр",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 10,
                    Name = "Простой",
                    Operation = "Технологический",
                    Executor = "Прессовщик",
                    VarName = "tпр.т",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 11,
                    Name = "Простой",
                    Operation = "По вине работника",
                    Executor = "Работник",
                    VarName = "tпр.и",
                    NormTime = 0
                },
                new FlowsheetProcessViewModel(null, RepositoryFactory)
                {
                    Flowsheet = Flowsheet,
                    SortOrder = 12,
                    Name = "Общее время вулканизации/вырубки",
                    Operation = "",
                    Executor = "Технолог",
                    VarName = "Tоб",
                    NormTime = 0
                }
            };
            Items.ClearAndAddRange(processes);
        }
    }
}
