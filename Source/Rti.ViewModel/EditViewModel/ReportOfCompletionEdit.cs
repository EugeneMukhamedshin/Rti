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

        public ReportOfCompletionEdit(string name, RequestViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
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

            var reportGenerator = new ReportOfCompletionReportGenerator();reportGenerator.BuildReport(Source.Id, ViewService, RepositoryFactory);
        }
    }
}
