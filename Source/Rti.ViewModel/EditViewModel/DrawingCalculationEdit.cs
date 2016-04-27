using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationEdit: EditViewModel<DrawingCalculationViewModel>
    {
        public DelegateCommand CalculateCommand { get; set; }

        public DrawingCalculationEdit(string name, DrawingCalculationViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            CalculateCommand = new DelegateCommand(
                "Расчет",
                o => true,
                o => Entity.PlanCalculation.Calculate());
        }
    }
}
