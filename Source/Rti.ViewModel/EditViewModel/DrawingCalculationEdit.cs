using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationEdit: EditViewModel<DrawingCalculationViewModel>
    {
        public DrawingCalculationEdit(string name, DrawingCalculationViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            Entity.PlanCalculation.CalculateCommand = new DelegateCommand(
                "Расчет",
                o => true,
                o => Entity.PlanCalculation.Calculate());
            Entity.FactCalculation.CalculateCommand = new DelegateCommand(
               "Расчет",
               o => true,
               o => Entity.FactCalculation.Calculate());
        }
    }
}
