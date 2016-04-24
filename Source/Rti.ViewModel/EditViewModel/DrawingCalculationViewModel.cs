using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationViewModel : BaseViewModel
    {
        public DrawingCalculationViewModel(CalculationViewModel planCalculation, CalculationViewModel factCalculation)
        {
            PlanCalculation = planCalculation;
            FactCalculation = factCalculation;
        }

        public CalculationViewModel PlanCalculation { get; set; }
        public CalculationViewModel FactCalculation { get; set; }

        public void Save()
        {
            if (PlanCalculation != null && (PlanCalculation.IsNewEntity || PlanCalculation.IsChanged))
                PlanCalculation.SaveEntity();
            if (FactCalculation != null && (FactCalculation.IsNewEntity || FactCalculation.IsChanged))
                FactCalculation.SaveEntity();
        }
    }
}