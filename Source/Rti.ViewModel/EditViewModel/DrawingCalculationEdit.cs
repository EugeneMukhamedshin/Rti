using System;
using System.Collections.Generic;
using System.Linq;
using System.Management.Instrumentation;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationEdit: EditEntityViewModel<DrawingViewModel, Drawing>
    {
        private List<DrawingViewModel> _drawingSource;
        public DelegateCommand CalculatePlanCommand { get; set; }
        public DelegateCommand CalculateFactCommand { get; set; }

        public List<DrawingViewModel> DrawingSource
        {
            get { return _drawingSource ?? (_drawingSource = new List<DrawingViewModel> {Entity}); }
        }

        public DrawingCalculationEdit(string name, DrawingViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            CalculatePlanCommand = new DelegateCommand(
                "Расчет",
                o => true,
                o => Calculate(CalculationType.Plan));
            CalculateFactCommand = new DelegateCommand(
               "Расчет",
               o => true,
               o => Calculate(CalculationType.Fact));
        }

        public void Calculate(CalculationType calculationType)
        {
            var drawing = Source;
            var calculation = calculationType == CalculationType.Plan
                ? drawing.PlanCalculation
                : drawing.FactCalculation;
            var flowsheetProcesses = RepositoryFactory.GetDrawingFlowsheetProcessRepository().GetByDrawingId(drawing.Id);
            var flowsheetMachines = RepositoryFactory.GetDrawingFlowsheetMachineRepository().GetByDrawingId(drawing.Id);
            if (!flowsheetProcesses.Any())
                throw new InvalidOperationException("Не заполнена технологическая карта");
            var getTime = new Func<ProcessType, decimal>(processType =>
            {
                var process = flowsheetProcesses.FirstOrDefault(fp => fp.Process.ProcessTypeEnum == processType);
                return process == null ? 0 : process.NormTime;
            });
            var constants = RepositoryFactory.GetConstantRepository().GetActual();

            var material = calculationType == CalculationType.Plan ? drawing.MaterialByPassport : drawing.Material;
            var mass = calculationType == CalculationType.Plan
                ? drawing.MassCalculation == null ? null : drawing.MassCalculation.CalculatedMass
                : drawing.MassWithShruff;
            // Сырье и материалы
            if (calculationType == CalculationType.Fact)
            {
                if (material != null && mass != null)
                    calculation.MainMaterial = material.Price*Convert.ToDecimal(mass);
                else
                    calculation.MainMaterial = 0;
            }
            // Транспортные
            calculation.Transport = constants.KTr / 100 * calculation.AllMaterials;
            // Основная зарплата
            if (calculationType == CalculationType.Fact)
            {
                if (drawing.Equipment != null && drawing.Equipment.Output != 0)
                    calculation.MainSalary = (getTime(ProcessType.Loading) + getTime(ProcessType.CuringOrCutting) +
                                              getTime(ProcessType.Unloading))/drawing.Equipment.Output*constants.KSt;
                else
                    calculation.MainSalary = 0;
            }
            // Дополнительная зарплата
            calculation.AdditionalSalary = calculation.MainSalary / 11;
            // Отчисления ЕСН
            calculation.FixedTax = (calculation.MainSalary + calculation.AdditionalSalary) * constants.KEsn / 100;
            // Общецеховые
            calculation.TotalDivision = (calculation.MainSalary + calculation.AdditionalSalary) * constants.KObCeh / 100;
            // Общепроизводственные
            calculation.TotalManufacture = (calculation.MainSalary + calculation.AdditionalSalary) * constants.KObPr / 100;
            // Итого (1)
            calculation.MainSummary = calculation.AllMaterials + calculation.Transport + calculation.MainSalary + calculation.AdditionalSalary + calculation.FixedTax + calculation.TotalDivision +
                         calculation.TotalManufacture;
            // Электроэнергия для формовых
            if (drawing.Equipment != null && drawing.Equipment.Output != 0)
                calculation.PowerForFormed = getTime(ProcessType.CuringOrCutting) * flowsheetMachines.Max(fm => fm.Machine.TimePrice) /
                                 drawing.Equipment.Output;
            else
                calculation.PowerForFormed = 0;
            // Электроэнергия прочая
            calculation.OtherPower = calculation.PowerForFormed * constants.KEl / 100;
            // Итого (2)
            calculation.MainAndPowerSummary = calculation.MainSummary + calculation.PowerForFormed + calculation.OtherPower;
            // Коммерческие (Непредвиденные)
            calculation.Unforseen = calculation.MainAndPowerSummary * constants.KNep / 100;
            // Себестоимость
            calculation.NetCost = calculation.MainAndPowerSummary + calculation.Unforseen;
            // Рентабельность
            calculation.Profitability = calculation.NetCost * constants.KRen / 100;
            // Цена 
            calculation.Price = calculation.NetCost + calculation.Profitability;
            // НДС
            calculation.NdsTax = calculation.Price * constants.Nds / 100;
            // Всего
            calculation.Summary = calculation.Price + calculation.NdsTax;
        }

        protected override void DoSave()
        {
            Entity.PlanCalculation.SaveEntity();
            Entity.FactCalculation.SaveEntity();
            base.DoSave();
        }
    }
}
