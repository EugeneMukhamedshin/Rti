using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class CalculationEdit: EditEntityViewModel<CalculationViewModel, Model.Domain.Calculation>
    {
        public CalculationEdit(string name, CalculationViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public override void Refresh()
        {
            base.Refresh();
        }
    }
}
