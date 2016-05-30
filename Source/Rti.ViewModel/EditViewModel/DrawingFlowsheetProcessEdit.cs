using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingFlowsheetProcessEdit: EditEntityViewModel<DrawingFlowsheetProcessViewModel, DrawingFlowsheetProcess>
    {
        public ProcessType ProcessType { get; set; }

        public DrawingFlowsheetProcessEdit(string name, DrawingFlowsheetProcessViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override void DoSave()
        {
            var process = RepositoryFactory.GetProcessRepository().GetById((int)ProcessType);
            Entity.Process = new ProcessViewModel(process, RepositoryFactory);
            base.DoSave();
        }
    }
}
