using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationViewModel : BaseViewModel
    {
        public DrawingViewModel Drawing { get; set; }

        public DrawingCalculationViewModel(DrawingViewModel drawing)//CalculationViewModel planCalculation, CalculationViewModel factCalculation)
        {
            //PlanCalculation = planCalculation;
            //FactCalculation = factCalculation;

            //PlanCalculation.PropertyChanged += (sender, args) => OnPropertyChanged("PlanCalculation");
            //FactCalculation.PropertyChanged += (sender, args) => OnPropertyChanged("FactCalculation");
            Drawing = drawing;
        }

        //public CalculationViewModel PlanCalculation { get; set; }
        //public CalculationViewModel FactCalculation { get; set; }

        public void Save()
        {
            if (Drawing.PlanCalculation != null && (Drawing.PlanCalculation.IsNewEntity || Drawing.PlanCalculation.IsChanged))
                Drawing.PlanCalculation.SaveEntity();
            if (Drawing.FactCalculation != null && (Drawing.FactCalculation.IsNewEntity || Drawing.FactCalculation.IsChanged))
                Drawing.FactCalculation.SaveEntity();
        }
    }
}