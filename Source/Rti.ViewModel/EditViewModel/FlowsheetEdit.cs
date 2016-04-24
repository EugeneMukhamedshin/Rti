using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Lists;

namespace Rti.ViewModel.EditViewModel
{
    public class FlowsheetEdit: EditEntityViewModel<FlowsheetViewModel, Flowsheet>
    {
        public IEnumerable<FlowsheetViewModel> FlowsheetSource { get { return new List<FlowsheetViewModel> {Entity}; } }
        public FlowsheetMachineList FlowsheetMachineList { get; set; }
        public FlowsheetProcessList FlowsheetProcessList { get; set; }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public FlowsheetEdit(string name, FlowsheetViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            FlowsheetMachineList = new FlowsheetMachineList(entity, Editable, ViewService, RepositoryFactory);
            FlowsheetProcessList = new FlowsheetProcessList(entity, Editable, ViewService, RepositoryFactory);

            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(o => new ContragentViewModel(o, RepositoryFactory)).ToList());
        }

        public override void Refresh()
        {
            base.Refresh();
            FlowsheetMachineList.Refresh();
            if (Entity.IsNewEntity)
                FlowsheetProcessList.GenerateProcessesForNewFlowsheet();
            else
                FlowsheetProcessList.Refresh();
        }

        protected override bool DoValidate()
        {
            if (Entity.Customer == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан заказчик"));
                return false;
            }
            if (!FlowsheetMachineList.Items.Any())
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Перечень оборудования не задан")));
                return false;
            }
            foreach (var flowsheetMachine in FlowsheetMachineList.Items)
            {
                if (flowsheetMachine.Machine == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Перечень оборудования. В строке {0} не задано оборудование", FlowsheetMachineList.Items.IndexOf(flowsheetMachine) + 1)));
                    return false;
                }
            }
            if (!FlowsheetProcessList.Items.Any())
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. Не задано ни одного процесса")));
                return false;
            }
            if (FlowsheetProcessList.Items.Sum(o => o.NormTime) == 0)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. Общее время процессов равно нулю")));
                return false;
            }
            foreach (var flowsheetProcess in FlowsheetProcessList.Items)
            {
                if (flowsheetProcess.Name == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. В строке {0} не задано наименование работ", FlowsheetProcessList.Items.IndexOf(flowsheetProcess) + 1)));
                    return false;
                }
                if (flowsheetProcess.Executor == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. В строке {0} не задан исполнитель", FlowsheetProcessList.Items.IndexOf(flowsheetProcess) + 1)));
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
