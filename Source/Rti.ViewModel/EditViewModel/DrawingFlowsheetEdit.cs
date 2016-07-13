using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Lists;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingFlowsheetEdit : EditEntityViewModel<DrawingViewModel, Drawing>
    {
        public List<DrawingViewModel> DrawingSource { get { return new List<DrawingViewModel> { Entity }; } }

        public DrawingFlowsheetMachineList DrawingFlowsheetMachineList { get; set; }
        public DrawingFlowsheetProcessList DrawingFlowsheetProcessList { get; set; }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public DelegateCommand EditEquipmentCommand { get; set; }
        public DelegateCommand ReportCommand { get; set; }

        public DrawingFlowsheetEdit(string name, DrawingViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            if (Entity.Equipment == null)
                Entity.Equipment = new EquipmentViewModel(null, RepositoryFactory)
                {
                    SortOrder = RepositoryFactory.GetEquipmentRepository().GetNextSortOrder()
                };

            EditEquipmentCommand = new DelegateCommand(o => EditEquipment());
            ReportCommand = new DelegateCommand(o => Report());
            DrawingFlowsheetMachineList = new DrawingFlowsheetMachineList(entity, Editable, ViewService, RepositoryFactory);
            DrawingFlowsheetProcessList = new DrawingFlowsheetProcessList(entity, Editable, ViewService, RepositoryFactory);
            DrawingFlowsheetProcessList.SummaryChanged += DrawingFlowsheetProcessList_SummaryChanged;

            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(o => new ContragentViewModel(o, RepositoryFactory)).ToList());
        }

        private void Report()
        {
            if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                return;
            if (!Save()) return;
            var viewModel = new DrawingFlowsheetReportViewModel(string.Format("ТК ({0})", Entity.Name), ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("ТК ({0}).xls", Entity.Name))
            {
                Drawing = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void EditEquipment()
        {
            var editViewModel = new EquipmentEdit("Изменение оснастки", Entity.Equipment, ReadOnly, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            ViewService.ShowViewDialog(editViewModel);
        }

        private void DrawingFlowsheetProcessList_SummaryChanged(object sender, EventArgs e)
        {
            Entity.SummaryTime =
                DrawingFlowsheetProcessList.Items.Where(o => o.IsIncludedToSummary ?? false).Sum(o => o.NormTime);
        }

        protected override void DoSave()
        {
            Entity.Equipment.SaveEntity();
            base.DoSave();
            DrawingFlowsheetMachineList.SaveChanges();
            DrawingFlowsheetProcessList.SaveChanges();
        }

        public override void Refresh()
        {
            base.Refresh();
            DrawingFlowsheetMachineList.Refresh();
            //if (Source.IsNewEntity)
            //    DrawingFlowsheetProcessList.GenerateProcessesForNewFlowsheet();
            //else
            DrawingFlowsheetProcessList.Refresh();
        }

        protected override bool DoValidate()
        {
            //if (Entity.Customer == null)
            //{
            //    ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан заказчик"));
            //    return false;
            //}
            if (!DrawingFlowsheetMachineList.Items.Any())
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Перечень оборудования не задан")));
                return false;
            }
            foreach (var flowsheetMachine in DrawingFlowsheetMachineList.Items)
            {
                if (flowsheetMachine.Machine == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Перечень оборудования. В строке {0} не задано оборудование", DrawingFlowsheetMachineList.Items.IndexOf(flowsheetMachine) + 1)));
                    return false;
                }
            }
            if (!DrawingFlowsheetProcessList.Items.Any())
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. Не задано ни одного процесса")));
                return false;
            }
            if (DrawingFlowsheetProcessList.Items.Sum(o => o.NormTime) == 0)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. Общее время процессов равно нулю")));
                return false;
            }
            foreach (var flowsheetProcess in DrawingFlowsheetProcessList.Items)
            {
                if (flowsheetProcess.DisplayName == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. В строке {0} не задано наименование работ", DrawingFlowsheetProcessList.Items.IndexOf(flowsheetProcess) + 1)));
                    return false;
                }
                if (flowsheetProcess.DisplayExecutor == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("Нормирование времени. В строке {0} не задан исполнитель", DrawingFlowsheetProcessList.Items.IndexOf(flowsheetProcess) + 1)));
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
