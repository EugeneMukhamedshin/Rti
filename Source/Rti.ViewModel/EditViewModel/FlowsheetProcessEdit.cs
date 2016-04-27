using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class FlowsheetProcessEdit: EditEntityViewModel<FlowsheetProcessViewModel, FlowsheetProcess>
    {
        public ProcessType ProcessType { get; set; }

        public FlowsheetProcessEdit(string name, FlowsheetProcessViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override void DoInternalSave()
        {
            base.DoInternalSave();
            var process = RepositoryFactory.GetProcessRepository().GetById((int) ProcessType);
            Entity.Process = new ProcessViewModel(process, RepositoryFactory);
        }
    }
}
