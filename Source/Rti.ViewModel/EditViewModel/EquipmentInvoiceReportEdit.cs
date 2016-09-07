using System;
using System.IO;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class EquipmentInvoiceReportEdit : EditEntityViewModel<RequestViewModel, Request>
    {
        public DelegateCommand BuildReportCommand { get; set; }

        public EquipmentInvoiceReportEdit(string name, RequestViewModel entity, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, false, viewService, repositoryFactory)
        {
            BuildReportCommand = new DelegateCommand(o => BuildReport());
            if (Entity.EquipmentInvoiceNumber == null)
                Entity.EquipmentInvoiceNumber = RepositoryFactory.GetRequestRepository().GetNextEquipmentInvoiceNumber();
            if (Entity.EquipmentInvoiceDate == null)
                Entity.EquipmentInvoiceDate = Entity.RegDate;
        }

        private void BuildReport()
        {
            DoSave();

            var viewModel = new EquipmentInvoiceReportViewModel("Счет на оснастку", Source, ViewService, RepositoryFactory, XsltPath, "Счет на оснастку.xls");
            viewModel.Refresh();
            viewModel.GenerateReport();

            Close(true);
        }

        public string XsltPath { get; set; }
    }
}