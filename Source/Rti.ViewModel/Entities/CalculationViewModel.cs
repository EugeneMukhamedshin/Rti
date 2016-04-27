using System;
using System.Linq;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class CalculationViewModel
    {
        public void Calculate()
        {
            var flowsheet = RepositoryFactory.GetFlowsheetRepository().GetByDrawingId(Drawing.Id);
            if (flowsheet == null)
                throw new InvalidOperationException("Не заполнена технологическая карта");
            var flowsheetProcesses = RepositoryFactory.GetFlowsheetProcessRepository().GetByFlowsheetId(flowsheet.Id);
            var flowsheetMachines = RepositoryFactory.GetFlowsheetMachineRepository().GetByFlowsheetId(flowsheet.Id);
            var getTime = new Func<ProcessType, double>(processType =>
            {
                var process = flowsheetProcesses.SingleOrDefault(fp => fp.Process.ProcessTypeEnum == processType);
                return process == null ? 0 : process.NormTime;
            });
            var constants = RepositoryFactory.GetConstantRepository().GetActual();

            // Сырье и материалы
            if (Drawing.MaterialByPassport != null && Drawing.MassCalculation != null)
                MainMaterial = Drawing.MaterialByPassport.Price*Drawing.MassCalculation.CalculatedMass;
            else
                MainMaterial = 0;
            // Транспортные
            Transport = constants.KTr*MainMaterial;
            // Основная зарплата
            if (Drawing.Equipment != null)
                MainSalary = (getTime(ProcessType.Loading) + getTime(ProcessType.CuringOrCutting) +
                              getTime(ProcessType.Unloading))/Drawing.Equipment.Output*constants.KSt;
            else
                MainSalary = 0;
            // Дополнительная зарплата
            AdditionalSalary = MainSalary/11;
            // Отчисления ЕСН
            FixedTax = (MainSalary + AdditionalSalary)*constants.KEsn;
            // Общецеховые
            TotalDivision = (MainSalary + AdditionalSalary)*constants.KObCeh;
            // Общепроизводственные
            TotalManufacture = (MainSalary + AdditionalSalary)*constants.KObPr;
            // Итого (1)
            MainSummary = MainMaterial + Transport + MainSalary + AdditionalSalary + FixedTax + TotalDivision +
                         TotalManufacture;
            // Электроэнергия для формовых
            if (Drawing.Equipment != null)
                PowerForFormed = getTime(ProcessType.CuringOrCutting)*flowsheetMachines.Max(fm => fm.Machine.TimePrice)/
                                 Drawing.Equipment.Output;
            else
                PowerForFormed = 0;
            // Электроэнергия прочая
            OtherPower = PowerForFormed*constants.KEl;
            // Итого (2)
            MainAndPowerSummary = MainSummary + PowerForFormed + OtherPower;
            // Коммерческие (Непредвиденные)
            Unforseen = MainAndPowerSummary*constants.KNep;
            // Себестоимость
            NetCost = MainAndPowerSummary + Unforseen;
            // Рентабельность
            Profitability = NetCost*constants.KRen;
            // Цена 
            Price = NetCost + Profitability;
            // НДС
            NdsTax = Price*constants.Nds;
            // Всего
            Summary = Price + NdsTax;
        }
    }
}
