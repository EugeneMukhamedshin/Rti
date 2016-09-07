using System;
using System.IO;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class RequestSpecificationReportEdit : EditEntityViewModel<RequestViewModel, Request>
    {
        public DelegateCommand BuildReportCommand { get; set; }

        public RequestSpecificationReportEdit(string name, RequestViewModel entity, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, false, viewService, repositoryFactory)
        {
            BuildReportCommand = new DelegateCommand(o => BuildReport());
            if (Entity.SpecificationNumber == null)
                Entity.SpecificationNumber = RepositoryFactory.GetRequestRepository().GetNextSpecificationNumber();
            if (Entity.SpecificationDate == null)
                Entity.SpecificationDate = Entity.RegDate;
        }

        private void BuildReport()
        {
            DoSave();

            var viewModel = new RequestSpecificationReportViewModel(string.Format("Спецификация {0} от {1:dd.MM.yyyy}", Entity.SpecificationNumber, Entity.SpecificationDate), ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), string.Format("Спецификация {0} от {1:dd.MM.yyyy}.xls", Entity.SpecificationNumber, Entity.SpecificationDate))
            {
                Request = Source,
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls"
            };
            viewModel.GenerateReport();

            Close(true);
        }
    }
}