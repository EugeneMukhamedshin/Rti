using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Lists;
using Rti.ViewModel.Reporting;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.EditViewModel
{
    public class RequestEdit : EditEntityViewModel<RequestViewModel, Request>
    {
        private RequestDetailViewModel _selectedRequestDetail;
        private List<RequestDetailViewModel> _deletedDetails;
        private ObservableCollection<RequestDetailViewModel> _requestDetails;
        private List<DrawingViewModel> _drawingsSource;

        public ObservableCollection<RequestDetailViewModel> RequestDetails
        {
            get { return _requestDetails; }
            set
            {
                if (Equals(value, _requestDetails)) return;
                _requestDetails = value;
                OnPropertyChanged();
            }
        }

        public RequestDetailViewModel SelectedRequestDetail
        {
            get { return _selectedRequestDetail; }
            set
            {
                if (Equals(value, _selectedRequestDetail)) return;
                _selectedRequestDetail = value;
                RemoveRequestDetailCommand.RequeryCanExecute();
                OnPropertyChanged();
            }
        }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }
        public Lazy<List<ContragentViewModel>> ManufacturersSource { get; set; }
        //public Lazy<List<DetailViewModel>> DetailsSource { get; set; }
        //public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }
        //public Lazy<List<GroupViewModel>> GroupsSource { get; set; }
        public List<DrawingViewModel> DrawingsSource
        {
            get { return _drawingsSource; }
            set
            {
                if (Equals(value, _drawingsSource)) return;
                _drawingsSource = value;
                OnPropertyChanged();
            }
        }

        private string xsltPath;

        public RequestEdit(string name, RequestViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            xsltPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports");
            _deletedDetails = new List<RequestDetailViewModel>();

            AddRequestDetailCommand = new DelegateCommand(
                "Добавить строку",
                o => true,
                o => AddRequestDetail());
            RemoveRequestDetailCommand = new DelegateCommand(
                "Удалить строку",
                o => SelectedRequestDetail != null,
                o => RemoveRequestDetail());
            CreateInvoiceCommand = new DelegateCommand(
                "Текущий счет",
                o => true,
                o => CreateInvoice());
            CreateSpecificationCommand = new DelegateCommand(CreateSpecification);
            CreateReportOfCompletionCommand = new DelegateCommand(
                "Акт выполненных работ",
                o => true,
                o => CreateReportOfCompletion());
            CreateReportOfAcceptanceCommand = new DelegateCommand(o => CreateReportOfAcceptance());
            CreateContractReportCommand = new DelegateCommand(
                "Договор",
                o => true,
                o => CreateContractReport());
            CreateM15Command = new DelegateCommand(o => CreateM15Report());
            CreateEquipmentInvoiceCommand = new DelegateCommand(o => CreateEquipmentInvoiceReport());
            OpenRequestReportCommand = new DelegateCommand(
                "Реестр заявок",
                o => true,
                o => OpenRequestReport());
            OpenDrawingEditCommand = new DelegateCommand(
                "Открыть чертеж",
                o => true,
                o => OpenDrawingEdit((RequestDetailViewModel)o));
        }

        public DelegateCommand CreateEquipmentInvoiceCommand { get; set; }

        private void CreateEquipmentInvoiceReport()
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
               "Для формирования заявка будет сохранена.\r\nПродолжить?")))
            {
                if (!Save()) return;

                var edit = new EquipmentInvoiceReportEdit("Счет на оснастку", Source, ViewService, RepositoryFactory)
                {
                    XsltPath = xsltPath
                };
                edit.Refresh();
                ViewService.ShowViewDialog(edit);

                Entity.SpecificationDate = Source.SpecificationDate;
                Entity.SpecificationNumber = Source.SpecificationNumber;
            }
        }

        private void CreateM15Report()
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                "Для формирования заявка будет сохранена.\r\nПродолжить?")))
            {
                if (!Save()) return;

                var viewModel = new M15ReportViewModel("Накладная М15", ViewService, RepositoryFactory, xsltPath, "Накладная М15.xls");
                viewModel.Refresh();
                viewModel.GenerateReport();
            }
        }

        public DelegateCommand CreateM15Command { get; set; }

        private void CreateReportOfAcceptance()
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                "Для формирования акта заявка будет сохранена.\r\nПродолжить?")))
            {
                if (!Save()) return;

                var edit = new ReportOfCompletionEdit("Акт приема передачи оснастки", Source, ReportOfCompletionEdit.ReportType.AcceplanceCertificate, ReadOnly, ViewService, RepositoryFactory)
                {
                    DrawingSource = RequestDetails.Select(o => o.Drawing).Distinct().ToList()
                };
                edit.Refresh();
                ViewService.ShowViewDialog(edit);

                Entity.CompleteSum = Source.CompleteSum;
            }
        }

        public DelegateCommand CreateReportOfAcceptanceCommand { get; set; }

        private void CreateSpecification(object obj)
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                "Для формирования акта заявка будет сохранена.\r\nПродолжить?")))
            {
                if (!Save()) return;

                var edit = new RequestSpecificationReportEdit("Спецификация", Source, ViewService, RepositoryFactory);
                edit.Refresh();
                ViewService.ShowViewDialog(edit);

                Entity.SpecificationDate = Source.SpecificationDate;
                Entity.SpecificationNumber = Source.SpecificationNumber;
            }
        }

        private void OpenDrawingEdit(RequestDetailViewModel detail)
        {
            var drawing = detail.Drawing ?? new DrawingViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetDrawingRepository().GetNextSortOrder(),
                CreationDate = DateTime.Now,
                Name = "Новый чертеж"
            };
            var editor = new DrawingEdit(detail.Drawing == null ? "Новый чертеж" : drawing.FullName, drawing, ReadOnly, ViewService, RepositoryFactory);
            editor.Refresh();
            if (ViewService.ShowViewDialog(editor) == true)
            {
                if (detail.Drawing == null)
                {
                    detail.Drawing = drawing;
                    RefreshDrawings();
                }
                detail.FillFromDrawing();
            }
        }

        private void OpenRequestReport()
        {
            //var requestReportGenerator = new RequestReportGenerator();
            //requestReportGenerator.BuildReport(RepositoryFactory);

            var viewModel = new RequestList(ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        public DelegateCommand AddRequestDetailCommand { get; set; }
        public DelegateCommand RemoveRequestDetailCommand { get; set; }
        public DelegateCommand CreateInvoiceCommand { get; set; }
        public DelegateCommand CreateSpecificationCommand { get; set; }
        public DelegateCommand CreateReportOfCompletionCommand { get; set; }
        public DelegateCommand CreateContractReportCommand { get; set; }
        public DelegateCommand OpenRequestReportCommand { get; set; }
        public DelegateCommand OpenDrawingEditCommand { get; set; }

        private void AddRequestDetail()
        {
            var newDetail = new RequestDetailViewModel(null, RepositoryFactory)
            {
                Request = Source,
                SortOrder = RequestDetails.Any() ? RequestDetails.Max(item => item.SortOrder) + 1 : 1
            };
            RequestDetails.Add(newDetail);
        }

        private void RemoveRequestDetail()
        {
            _deletedDetails.Add(SelectedRequestDetail);
            RequestDetails.Remove(SelectedRequestDetail);
        }

        private void CreateInvoice()
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                    "Для формирования счета заявка будет сохранена.\r\nПродолжить?")))
            {
                Entity.InvoiceDate = DateTime.Today;
                if (!Save()) return;

                var reportGenerator = new InvoiceReportGenerator();
                reportGenerator.BuildReport(Source.Id, ViewService, RepositoryFactory);
            }
        }

        private void CreateReportOfCompletion()
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                "Для формирования акта заявка будет сохранена.\r\nПродолжить?")))
            {
                if (!Save()) return;

                var edit = new ReportOfCompletionEdit("Акт выполненных работ", Source, ReportOfCompletionEdit.ReportType.CompletionCertificate, ReadOnly, ViewService, RepositoryFactory)
                {
                    DrawingSource = RequestDetails.Select(o => o.Drawing).Distinct().ToList()
                };
                edit.Refresh();
                ViewService.ShowViewDialog(edit);

                Entity.CompleteSum = Source.CompleteSum;
            }
        }
       
        private void CreateContractReport()
        {
            if (ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                "Для формирования договора заявка будет сохранена.\r\nПродолжить?")))
            {
                var contract = Source.Contract ?? new ContractViewModel(null, RepositoryFactory)
                {
                    Date = Entity.RegDate,
                    Number = RepositoryFactory.GetContractRepository().GetNextNumber(Entity.RegDate)
                };
                if (contract.IsNewEntity)
                    contract.SaveEntity();
                Entity.Contract = contract;
                if (!Save()) return;

                var reportGenerator = new ContractReportGenerator();
                reportGenerator.BuildReport(Source.Id, ViewService, RepositoryFactory);
            }
        }

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(() => RepositoryFactory.GetRequestDetailRepository()
                .GetByRequestId(Source.Id)
                .OrderBy(o => o.SortOrder)
                .Select(m => new RequestDetailViewModel(m, RepositoryFactory)),
                res => RequestDetails = new ObservableCollection<RequestDetailViewModel>(res));

            RefreshDrawings();
            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
            ManufacturersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Manufacturer).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
        }

        private void RefreshDrawings()
        {
            DoAsync(() => RepositoryFactory.GetDrawingRepository().GetAllActive().OrderBy(o => o.Id).Select(o => new DrawingViewModel(o, RepositoryFactory)),
                res => DrawingsSource = new List<DrawingViewModel>(res));
        }


        protected override void DoSave()
        {
            Entity.Sum = RequestDetails.Sum(o => o.Sum);
            // Сохраняем заявку
            base.DoSave();
            // Сохраняем детали заявки
            foreach (var deletedDetail in _deletedDetails)
            {
                deletedDetail.DeleteEntity();
            }
            _deletedDetails.Clear();
            foreach (var detail in RequestDetails)
            {
                if (detail.IsNewEntity || detail.IsChanged)
                {
                    if (detail.Drawing == null || detail.Drawing.Equipment == null || detail.Drawing.CalculationPrice == null || detail.Drawing.Price == null)
                        detail.RequestDetailStateEnum = RequestDetailState.New;
                    else
                        // Если есть чертеж, и он заполнен, отправляем деталь в производство
                        detail.RequestDetailStateEnum = RequestDetailState.ReadyToProduce;

                    detail.SaveEntity();
                }
            }
        }

        protected override bool DoValidate()
        {
            if (Entity.Customer == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан заказчик"));
                return false;
            }
            foreach (var requestDetail in RequestDetails)
            {
                if (requestDetail.Drawing == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан чертеж"));
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
