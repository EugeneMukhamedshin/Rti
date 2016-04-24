using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingCalculationEdit: EditViewModel<DrawingCalculationViewModel>
    {
        public DrawingCalculationEdit(string name, DrawingCalculationViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }
    }
}
