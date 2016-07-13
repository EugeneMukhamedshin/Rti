﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Management.Instrumentation;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationEdit : EditEntityViewModel<DrawingViewModel, Drawing>
    {
        private List<DrawingViewModel> _drawingSource;
        private string _calculatedFact;
        private string _calculatedPlan;
        private CalculationViewModel _planCalculation;
        private CalculationViewModel _factCalculation;
        public DelegateCommand CalculatePlanCommand { get; set; }
        public DelegateCommand CalculateFactCommand { get; set; }
        public DelegateCommand ReportPlanCommand { get; set; }
        public DelegateCommand ReportFactCommand { get; set; }

        public CalculationViewModel PlanCalculation
        {
            get { return _planCalculation; }
            set
            {
                if (Equals(value, _planCalculation)) return;
                _planCalculation = value;
                OnPropertyChanged();
            }
        }

        public CalculationViewModel FactCalculation
        {
            get { return _factCalculation; }
            set
            {
                if (Equals(value, _factCalculation)) return;
                _factCalculation = value;
                OnPropertyChanged();
            }
        }

        public string CalculatedFact
        {
            get { return _calculatedFact; }
            set
            {
                if (value == _calculatedFact) return;
                _calculatedFact = value;
                OnPropertyChanged();
            }
        }

        public string CalculatedPlan
        {
            get { return _calculatedPlan; }
            set
            {
                if (value == _calculatedPlan) return;
                _calculatedPlan = value;
                OnPropertyChanged();
            }
        }

        public List<DrawingViewModel> DrawingSource
        {
            get { return _drawingSource ?? (_drawingSource = new List<DrawingViewModel> { Entity }); }
        }

        public DrawingCalculationEdit(string name, DrawingViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            PlanCalculation = Entity.PlanCalculation.Clone();
            FactCalculation = Entity.FactCalculation.Clone();

            CalculatePlanCommand = new DelegateCommand(
                "Расчет",
                o => true,
                o => Calculate(CalculationType.Plan));
            CalculateFactCommand = new DelegateCommand(
               "Расчет",
               o => true,
               o => Calculate(CalculationType.Fact));
            ReportPlanCommand = new DelegateCommand(o => Report(CalculationType.Plan));
            ReportFactCommand = new DelegateCommand(o => Report(CalculationType.Fact));
            RefreshText();
        }

        private void Report(CalculationType calculationType)
        {
            if (!ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед печатью необходимо сохранить документ. Сохранить?")))
                return;
            if (!Save()) return;
            var viewModel = new DrawingCalculationReportViewModel(string.Format("Калькуляция ({0})", Entity.Name), ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("Калькуляция ({0}).xls", Entity.Name))
            {
                Drawing = Source,
                Calculation = calculationType == CalculationType.Fact ? FactCalculation : PlanCalculation,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();
        }

        private void RefreshText()
        {
            CalculatedFact = string.Format("Цена {0:f2} руб.", FactCalculation.Price ?? 0);
            CalculatedPlan = string.Format("Цена {0:f2} руб.", PlanCalculation.Price ?? 0);
        }

        public void Calculate(CalculationType calculationType)
        {
            var drawing = Source;
            var calculation = calculationType == CalculationType.Plan
                ? PlanCalculation
                : FactCalculation;
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
                    calculation.MainMaterial = material.Price * Convert.ToDecimal(mass);
                else
                    calculation.MainMaterial = 0;
            }
            // Транспортные
            calculation.Transport = constants.KTr.ToDecimal() / 100 * calculation.AllMaterials;
            // Основная зарплата
            if (calculationType == CalculationType.Fact)
            {
                if (drawing.Equipment != null && drawing.Equipment.Output != 0)
                    calculation.MainSalary = (getTime(ProcessType.Loading) + getTime(ProcessType.CuringOrCutting) +
                                              getTime(ProcessType.Unloading)) / drawing.Equipment.Output * constants.KSt.ToDecimal();
                else
                    calculation.MainSalary = 0;
            }
            // Дополнительная зарплата
            calculation.AdditionalSalary = calculation.MainSalary / 11;
            // Отчисления ЕСН
            calculation.FixedTax = (calculation.MainSalary + calculation.AdditionalSalary) * constants.KEsn.ToDecimal() / 100;
            // Общецеховые
            calculation.TotalDivision = (calculation.MainSalary + calculation.AdditionalSalary) * constants.KObCeh.ToDecimal() / 100;
            // Общепроизводственные
            calculation.TotalManufacture = (calculation.MainSalary + calculation.AdditionalSalary) * constants.KObPr.ToDecimal() / 100;
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
            calculation.OtherPower = calculation.MainSummary * constants.KEl.ToDecimal() / 100;
            // Итого (2)
            calculation.MainAndPowerSummary = calculation.MainSummary + calculation.PowerForFormed + calculation.OtherPower;
            // Коммерческие (Непредвиденные)
            calculation.Unforseen = calculation.MainAndPowerSummary * constants.KNep.ToDecimal() / 100;
            // Себестоимость
            calculation.NetCost = calculation.MainAndPowerSummary + calculation.Unforseen;
            // Рентабельность
            calculation.Profitability = calculation.NetCost * constants.KRen.ToDecimal() / 100;
            // Цена 
            calculation.Price = calculation.NetCost + calculation.Profitability;
            // НДС
            calculation.NdsTax = calculation.Price * constants.Nds.ToDecimal() / 100;
            // Всего
            calculation.Summary = calculation.Price + calculation.NdsTax;

            //private Decimal? _mainMaterial;
            //private Decimal? _rubber;
            //private Decimal? _clue;
            //private Decimal? _armature;
            //private Decimal? _sand;
            //private Decimal? _textile;
            //private Decimal? _otherMaterial;
            //private Decimal? _transport;
            //private Decimal? _mainSalary;

            if (calculationType == CalculationType.Fact)
            {
                if (PlanCalculation.MainMaterial == null)
                    PlanCalculation.MainMaterial = FactCalculation.MainMaterial;
                if (PlanCalculation.Rubber == null)
                    PlanCalculation.Rubber = FactCalculation.Rubber;
                if (PlanCalculation.Clue == null)
                    PlanCalculation.Clue = FactCalculation.Clue;
                if (PlanCalculation.Armature == null)
                    PlanCalculation.Armature = FactCalculation.Armature;
                if (PlanCalculation.Sand == null)
                    PlanCalculation.Sand = FactCalculation.Sand;
                if (PlanCalculation.Textile == null)
                    PlanCalculation.Textile = FactCalculation.Textile;
                if (PlanCalculation.OtherMaterial == null)
                    PlanCalculation.OtherMaterial = FactCalculation.OtherMaterial;
                if (PlanCalculation.MainSalary == null)
                    PlanCalculation.MainSalary = FactCalculation.MainSalary;
            }

            RefreshText();
        }

        protected override void DoSave()
        {
            Entity.PlanCalculation.CopyFrom(PlanCalculation);
            Entity.PlanCalculation.SaveEntity();
            Entity.FactCalculation.CopyFrom(FactCalculation);
            Entity.FactCalculation.SaveEntity();
            base.DoSave();
        }
    }
}
