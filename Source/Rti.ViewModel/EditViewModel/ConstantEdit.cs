using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class ConstantEdit: EditEntityViewModel<ConstantViewModel, Constant>
    {
        public ConstantEdit(string name, ConstantViewModel constant, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, constant, readOnly, viewService, repositoryFactory)
        {
        }
    }
}
