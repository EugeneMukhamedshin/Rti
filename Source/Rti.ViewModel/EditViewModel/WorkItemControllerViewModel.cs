//using System.Linq;
//using Rti.Model.Domain.BusinessLogic;
//using Rti.Model.Repository.Interfaces;
//using Rti.ViewModel.Entities;

//namespace Rti.ViewModel.EditViewModel
//{
//    public class WorkItemControllerViewModel
//    {
//        private WorkItemController _workItemController;
        
//        public IViewService ViewService { get; set; }
//        public IRepositoryFactory RepositoryFactory { get; set; }

//        public WorkItemControllerViewModel(IViewService viewService, IRepositoryFactory repositoryFactory)
//        {
//            ViewService = viewService;
//            RepositoryFactory = repositoryFactory;
//            _workItemController = new WorkItemController(RepositoryFactory);
//        }

//        public void PostWorkItem(WorkItemViewModel workItem)
//        {
//            _workItemController.PostWorkItems(workItem.Drawing.Id, workItem.WorkDate, workItem.SortOrder);
//        }
//    }
//}