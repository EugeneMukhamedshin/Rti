using System;
using System.IO;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Lists;
using Rti.ViewModel.Reporting.ViewModel;

// ReSharper disable UnusedAutoPropertyAccessor.Global
namespace Rti.ViewModel
{
    public class MainViewModel : BaseViewModel, IClosable
    {
        private JobViewModel _job;
        public IViewService ViewService { get; set; }

        public RequestViewModel SelectedRequest { get; set; }
        public int? SelectedRequestNumber { get; set; }
        //public List<RequestViewModel> Requests { get; set; }

        public DelegateCommand ExitCommand { get; set; }

        public DelegateCommand CreateNewRequestCommand { get; set; }
        public DelegateCommand CreateNewShipmentCommand { get; set; }
        public DelegateCommand OpenRequestCommand { get; set; }
        public DelegateCommand OpenRequestListCommand { get; set; }

        public DelegateCommand OpenDrawingsCommand { get; set; }

        public DelegateCommand OpenDailyWorkPackagesCommand { get; set; }
        public DelegateCommand OpenMakedDetailsReportCommand { get; set; }


        public DelegateCommand OpenShipmentsCommand { get; set; }

        public DelegateCommand OpenShavingRecordsCommand { get; set; }
        public DelegateCommand OpenMaterialArrivalRecordsCommand { get; set; }
        public DelegateCommand OpenRollingRecordsCommand { get; set; }
        public DelegateCommand OpenPaymentsCommand { get; set; }
        public DelegateCommand OpenEquipmentPaymentsCommand { get; set; }


        public DelegateCommand OpenCustomersCommand { get; set; }
        public DelegateCommand OpenSuppliersCommand { get; set; }
        public DelegateCommand OpenManufacturersCommand { get; set; }
        public DelegateCommand OpenDriversCommand { get; set; }
        public DelegateCommand OpenJobsCommand { get; set; }
        public DelegateCommand OpenEmployeesCommand { get; set; }
        public DelegateCommand OpenMaterialsCommand { get; set; }
        public DelegateCommand OpenGroupsCommand { get; set; }
        public DelegateCommand OpenEquipmentsCommand { get; set; }
        public DelegateCommand OpenDetailsCommand { get; set; }
        public DelegateCommand OpenMethodsCommand { get; set; }
        public DelegateCommand OpenMeasureUnitsCommand { get; set; }
        public DelegateCommand OpenMachinesCommand { get; set; }
        public DelegateCommand OpenConstantsCommand { get; set; }

        #region Reports

        private string xsltPath;

        public DelegateCommand OpenRequestsByMethodsReportCommand { get; set; }
        public DelegateCommand OpenDrawingShipmentsReportCommand { get; set; }
        public DelegateCommand OpenUsedMaterialsReportCommand { get; set; }
        public DelegateCommand OpenRequestDirectExpencesReportCommand { get; set; }
        public DelegateCommand OpenWorkItemDirectExpencesReportCommand { get; set; }
        public DelegateCommand OpenShipmentDirectExpencesReportCommand { get; set; }
        public DelegateCommand OpenSalaryReportCommand { get; set; }
        public DelegateCommand OpenMaterialMovingsReportCommand { get; set; }

        #endregion

        public MainViewModel(IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            xsltPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports");

            ViewService = viewService;

            ExitCommand = new DelegateCommand(o => Close(null));

            CreateNewRequestCommand = new DelegateCommand(o => HasFullAccess, o => CreateNewRequest());
            CreateNewShipmentCommand = new DelegateCommand(o => HasFullAccess, o => CreateNewShipment());
            OpenRequestCommand = new DelegateCommand(o => HasFullAccess, o => OpenRequest());
            OpenRequestListCommand = new DelegateCommand(o => HasFullAccess, o => OpenRequestList());

            OpenDrawingsCommand = new DelegateCommand(o => HasFullAccess, o => OpenDrawingList());

            OpenDailyWorkPackagesCommand = new DelegateCommand(o => HasFullAccess, o => OpenWorkItems());
            OpenMakedDetailsReportCommand = new DelegateCommand(o => HasFullAccess, o => OpenMakedDetailsReport());

            OpenShipmentsCommand = new DelegateCommand(o => HasFullAccess, o => OpenShipments());

            OpenShavingRecordsCommand = new DelegateCommand(o => HasJournalsAccess, o => OpenShavingRecords());
            OpenMaterialArrivalRecordsCommand = new DelegateCommand(o => HasJournalsAccess, o => OpenMaterialArrivalRecords());
            OpenRollingRecordsCommand = new DelegateCommand(o => HasJournalsAccess, o => OpenRollingRecords());
            OpenPaymentsCommand = new DelegateCommand(o => HasJournalsAccess, o => OpenPayments());
            OpenEquipmentPaymentsCommand = new DelegateCommand(o => HasJournalsAccess, o => OpenEquipmentPayments());

            OpenCustomersCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new ContragentList(ContragentType.Customer, true, ViewService, RepositoryFactory)));
            OpenSuppliersCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new ContragentList(ContragentType.Supplier, true, ViewService, RepositoryFactory)));
            OpenManufacturersCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new ContragentList(ContragentType.Manufacturer, true, ViewService, RepositoryFactory)));
            OpenDriversCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new DriverList(true, ViewService, RepositoryFactory)));
            OpenJobsCommand = new DelegateCommand(o => HasAdminAccess, o => OpenView(new JobList(true, ViewService, RepositoryFactory)));
            OpenEmployeesCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new EmployeeList(true, ViewService, RepositoryFactory)));
            OpenMaterialsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new MaterialList(true, ViewService, RepositoryFactory)));
            OpenGroupsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new GroupList(true, ViewService, RepositoryFactory)));
            OpenEquipmentsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new EquipmentList(true, ViewService, RepositoryFactory)));
            OpenDetailsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new DetailList(true, ViewService, RepositoryFactory)));
            OpenMethodsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new MethodList(true, ViewService, RepositoryFactory)));
            OpenMeasureUnitsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new MeasureUnitList(true, ViewService, RepositoryFactory)));
            OpenMachinesCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new MachineList(true, ViewService, RepositoryFactory)));
            OpenConstantsCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new ConstantEdit("Константы", new ConstantViewModel(RepositoryFactory.GetConstantRepository().GetActual(), RepositoryFactory), false, ViewService, RepositoryFactory)));

            OpenRequestsByMethodsReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new RequestsByMethodsReportViewModel("Сводный отчет по способу изготовления", ViewService, RepositoryFactory, xsltPath, "Отчет по способу изготовления.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
            OpenDrawingShipmentsReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new DrawingShipmentsReportViewModel("Заказы и отгрузка по чертежу", ViewService, RepositoryFactory, xsltPath, "Заказы и отгрузка по чертежу.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
            OpenUsedMaterialsReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new UsedMaterialsReportViewModel("Учет переработанного материала", ViewService, RepositoryFactory, xsltPath, "Учет переработанного материала.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
            OpenRequestDirectExpencesReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new RequestDirectExpencesReportViewModel("Учет прямых затрат на заявку", ViewService, RepositoryFactory, xsltPath, "Учет прямых затрат на заявку.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
            OpenWorkItemDirectExpencesReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new WorkItemDirectExpencesReportViewModel("Учет прямых затрат на наряд", ViewService, RepositoryFactory, xsltPath, "Учет прямых затрат на наряд.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
            OpenShipmentDirectExpencesReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new ShipmentDirectExpencesReportViewModel("Учет прямых затрат на отгрузку", ViewService, RepositoryFactory, xsltPath, "Учет прямых затрат на отгрузку.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
            OpenSalaryReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new SalaryReportViewModel("Отчет по заработной плате", ViewService, RepositoryFactory, xsltPath, "Отчет по заработной плате.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
<<<<<<< HEAD
            OpenMaterialMovingsReportCommand = new DelegateCommand(o => HasFullAccess, o => OpenView(new MaterialMovingsReportViewModel("Учет материалов", ViewService, RepositoryFactory, xsltPath, "Учет материалов.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
=======
            OpenMaterialMovingsReportCommand = new DelegateCommand(o => HasReportsAccess, o => OpenView(new MaterialMovingsReportViewModel("Учет материалов", ViewService, RepositoryFactory, xsltPath, "Учет материалов.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" }));
>>>>>>> origin/develop
        }

        private bool? OpenView(BaseViewModel viewModel)
        {
            viewModel.Refresh();
            return ViewService.ShowViewDialog(viewModel);
        }

        private void OpenDrawingList()
        {
            var viewModel = new DrawingList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenWorkItems()
        {
            var viewModel = new WorkItemList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }


        private void OpenMakedDetailsReport()
        {
            var viewModel = new MakedDetailsReportViewModel("Реестр изготовленных деталей", ViewService, RepositoryFactory,
                Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"), "Реестр изготовленных деталей.xls") { ExtensionFilter = "Файлы Excel (*.xls)|*.xls" };
            ViewService.ShowViewDialog(viewModel);
        }
        private void OpenShipments()
        {
            var viewModel = new ShipmentList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenShavingRecords()
        {
            var viewModel = new ShavingRecordList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenMaterialArrivalRecords()
        {
            var viewModel = new MaterialArrivalRecordList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenRollingRecords()
        {
            var viewModel = new RollingRecordList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenPayments()
        {
            var viewModel = new PaymentList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenEquipmentPayments()
        {
            var viewModel = new EquipmentPaymentList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void CreateNewRequest()
        {
            var request = new RequestViewModel(null, RepositoryFactory)
            {
                RegDate = DateTime.Today,
                Number = RepositoryFactory.GetRequestRepository().GetNewRequestNumber()
            };
            request.SaveEntity();
            var editViewModel = new RequestEdit("Новая заявка", request, false, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            if (ViewService.ShowViewDialog(editViewModel) != true)
                request.DeleteEntity();
        }

        private void CreateNewShipment()
        {
            var shipment = new ShipmentViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
                SortOrder = RepositoryFactory.GetShipmentRepository().GetNextSortOrder()
            };
            shipment.DeliveryDocNumber = shipment.SortOrder;
            shipment.DeliveryDocDate = shipment.Date;
            var editViewModel = new ShipmentEdit("Отгрузка", shipment, false, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            ViewService.ShowViewDialog(editViewModel);
        }

        private void OpenRequest()
        {
            if (SelectedRequestNumber != null)
                SelectedRequest = new RequestViewModel(RepositoryFactory.GetRequestRepository().GetByNumber(SelectedRequestNumber.Value), RepositoryFactory);
            if (SelectedRequest == null)
                return;
            var editViewModel = new RequestEdit("Заявка", SelectedRequest, false, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            ViewService.ShowViewDialog(editViewModel);
        }

        private void OpenRequestList()
        {
            var viewModel = new RequestList(ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }

        public JobViewModel Job
        {
            get { return _job; }
            set
            {
                if (Equals(value, _job)) return;
                _job = value;
                OnPropertyChanged();
                OnPropertyChanged("UserDisplayName");
                RequeryCommands();
            }
        }

        public bool HasReportsAccess { get { return Job != null && Job.HasReportsAccess; } }

        public bool HasJournalsAccess { get { return Job != null && Job.HasJournalsAccess; } }

        public bool HasFullAccess { get { return Job != null && Job.HasFullAccess; } }

        public bool HasAdminAccess { get { return Job != null && Job.HasAdminAccess; } }

        private void RequeryCommands()
        {
            CreateNewRequestCommand.RequeryCanExecute();
            CreateNewShipmentCommand.RequeryCanExecute();
            OpenRequestCommand.RequeryCanExecute();
            OpenRequestListCommand.RequeryCanExecute();
            OpenDrawingsCommand.RequeryCanExecute();
            OpenDailyWorkPackagesCommand.RequeryCanExecute();
            OpenMakedDetailsReportCommand.RequeryCanExecute();
            OpenShipmentsCommand.RequeryCanExecute();

            OpenShavingRecordsCommand.RequeryCanExecute();
            OpenMaterialArrivalRecordsCommand.RequeryCanExecute();
            OpenRollingRecordsCommand.RequeryCanExecute();
            OpenPaymentsCommand.RequeryCanExecute();
            OpenEquipmentPaymentsCommand.RequeryCanExecute();

            OpenCustomersCommand.RequeryCanExecute();
            OpenSuppliersCommand.RequeryCanExecute();
            OpenManufacturersCommand.RequeryCanExecute();
            OpenDriversCommand.RequeryCanExecute();
            OpenJobsCommand.RequeryCanExecute();
            OpenEmployeesCommand.RequeryCanExecute();
            OpenMaterialsCommand.RequeryCanExecute();
            OpenGroupsCommand.RequeryCanExecute();
            OpenEquipmentsCommand.RequeryCanExecute();
            OpenDetailsCommand.RequeryCanExecute();
            OpenMethodsCommand.RequeryCanExecute();
            OpenMeasureUnitsCommand.RequeryCanExecute();
            OpenMachinesCommand.RequeryCanExecute();
            OpenConstantsCommand.RequeryCanExecute();

            OpenRequestsByMethodsReportCommand.RequeryCanExecute();
            OpenDrawingShipmentsReportCommand.RequeryCanExecute();
            OpenUsedMaterialsReportCommand.RequeryCanExecute();
            OpenRequestDirectExpencesReportCommand.RequeryCanExecute();
            OpenWorkItemDirectExpencesReportCommand.RequeryCanExecute();
            OpenShipmentDirectExpencesReportCommand.RequeryCanExecute();
            OpenSalaryReportCommand.RequeryCanExecute();
            OpenMaterialMovingsReportCommand.RequeryCanExecute();

            OnPropertyChanged("HasAdminAccess");
            OnPropertyChanged("HasFullAccess");
            OnPropertyChanged("HasReportsAccess");
            OnPropertyChanged("HasJournalsAccess");
        }

        public string UserDisplayName { get { return Job == null ? null : string.Format("Пользователь: {0}", Job.Login); } }
    }
}
