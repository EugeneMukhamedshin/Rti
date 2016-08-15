using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting;

namespace Rti.ViewModel.EditViewModel
{
    public class ReportOfCompletionEdit : EditEntityViewModel<RequestViewModel, Request>
    {
        private readonly ReportType _reportType;

        public bool IsCompletionReport { get { return _reportType == ReportType.CompletionCertificate; } }

        public enum ReportType
        {
            // Акт выполненных работ
            CompletionCertificate,
            // Акт приема передачи оснастки
            AcceplanceCertificate
        }

        private List<ReportOfCompletionItemViewModel> _items;

        public List<ReportOfCompletionItemViewModel> Items
        {
            get { return _items; }
            set
            {
                if (Equals(value, _items)) return;
                _items = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand BuildReportCommand { get; set; }

        public ReportOfCompletionEdit(string name, RequestViewModel entity, ReportType reportType, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            _reportType = reportType;
            BuildReportCommand = new DelegateCommand(
                "Акт выполненных работ",
                o => true,
                o => BuildReport());
        }

        public override void Refresh()
        {
            base.Refresh();
            Items = RepositoryFactory.GetReportOfCompletionItemRepository().GetByRequestId(Source.Id)
                .Select(o => new ReportOfCompletionItemViewModel(o, RepositoryFactory))
                .ToList();
            if (!Items.Any())
                Items = new List<ReportOfCompletionItemViewModel>
                {
                    new ReportOfCompletionItemViewModel(null, RepositoryFactory) { Request = Source, EquipmentTypeEnum = EquipmentType.PressForm, Count = 0 },
                    new ReportOfCompletionItemViewModel(null, RepositoryFactory) { Request = Source, EquipmentTypeEnum = EquipmentType.Shtanets, Count = 0 },
                    new ReportOfCompletionItemViewModel(null, RepositoryFactory) { Request = Source, EquipmentTypeEnum = EquipmentType.Filiera, Count = 0 },
                    new ReportOfCompletionItemViewModel(null, RepositoryFactory) { Request = Source, EquipmentTypeEnum = EquipmentType.Shablon, Count = 0 },
                    new ReportOfCompletionItemViewModel(null, RepositoryFactory) { Request = Source, EquipmentTypeEnum = EquipmentType.Proboinik, Count = 0 },
                };
        }

        private void BuildReport()
        {
            DoSave();
            foreach (var item in Items)
            {
                item.SaveEntity();
            }

            if (_reportType == ReportType.CompletionCertificate)
            {
                var reportGenerator = new ReportOfCompletionReportGenerator();
                reportGenerator.BuildReport(Source.Id, ViewService, RepositoryFactory);
            }
            if (_reportType == ReportType.AcceplanceCertificate)
            {
                var reportGenerator = new ReportOfAcceptanceReportGenerator();
                reportGenerator.BuildReport(Source.Id, ViewService, RepositoryFactory);
            }
            Close(true);
        }
    }
}
