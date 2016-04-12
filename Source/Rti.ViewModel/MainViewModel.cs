using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Lists;
using Rti.ViewModel.ListViewModel;
using DrawingList = Rti.ViewModel.Lists.DrawingList;
using EmployeeList = Rti.ViewModel.Lists.EmployeeList;
using EquipmentList = Rti.ViewModel.Lists.EquipmentList;
using MaterialList = Rti.ViewModel.Lists.MaterialList;

namespace Rti.ViewModel
{
    public class MainViewModel : BaseViewModel, IClosable
    {
        public IViewService ViewService { get; set; }

        public RequestViewModel SelectedRequest { get; set; }
        public int? SelectedRequestNumber { get; set; }
        public List<RequestViewModel> Requests { get; set; }

        public DelegateCommand CreateNewRequestCommand { get; set; }
        public DelegateCommand OpenRequestCommand { get; set; }
        public DelegateCommand OpenDictionaryListCommand { get; set; }

        public DelegateCommand OpenDrawingsCommand { get; set; }

        public DelegateCommand OpenCustomersCommand { get; set; }
        public DelegateCommand OpenVendorsCommand { get; set; }
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

        public MainViewModel(IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            ViewService = viewService;

            CreateNewRequestCommand = new DelegateCommand(
                "Новая заявка",
                o => true,
                o => CreateNewRequest());
            OpenRequestCommand = new DelegateCommand(
                "Открыть заявку",
                o => true,
                o => OpenRequest());
            OpenDictionaryListCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionaryList());

            OpenDrawingsCommand = new DelegateCommand(
                "Чертежи",
                o => true,
                o => OpenDrawingList());

            OpenCustomersCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new ContragentList(0, true, ViewService, RepositoryFactory)));
            OpenVendorsCommand  = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new ContragentList(1, true, ViewService, RepositoryFactory)));
            OpenDriversCommand  = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new DriverList(true, ViewService, RepositoryFactory)));
            OpenJobsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new JobList(true, ViewService, RepositoryFactory)));
            OpenEmployeesCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new EmployeeList(true, ViewService, RepositoryFactory)));
            OpenMaterialsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new MaterialList(true, ViewService, RepositoryFactory)));
            OpenGroupsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new GroupList(true, ViewService, RepositoryFactory)));
            OpenEquipmentsCommand  = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new EquipmentList(true, ViewService, RepositoryFactory)));
            OpenDetailsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new DetailList(true, ViewService, RepositoryFactory)));
            OpenMethodsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new MethodList(true, ViewService, RepositoryFactory)));
            OpenMeasureUnitsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new MeasureUnitList(true, ViewService, RepositoryFactory)));
            OpenMachinesCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new MachineList(true, ViewService, RepositoryFactory)));
            OpenConstantsCommand = new DelegateCommand(
                "Справочники",
                o => true,
                o => OpenDictionary(new ConstantEdit("Константы", false, ViewService, RepositoryFactory)));
            Requests =
                RepositoryFactory.GetRequestRepository()
                    .GetAll()
                    .Select(o => new RequestViewModel(o, RepositoryFactory))
                    .ToList();
        }

        private void OpenDrawingList()
        {
            var viewModel = new DrawingList(true, ViewService, RepositoryFactory);
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenDictionary(BaseViewModel viewModel)
        {
            if (viewModel.GetType() == typeof(ConstantEdit))
            {
                var constant = new ConstantViewModel(RepositoryFactory.GetConstantRepository().GetActual(), RepositoryFactory);
                ((ConstantEdit)viewModel).Entity = constant;
                if (ViewService.ShowViewDialog(viewModel) == true)
                    constant.SaveEntity();
                return;
            }
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        private void CreateNewRequest()
        {
            var request = new RequestViewModel(null, RepositoryFactory);
            request.RegDate = DateTime.Today;
            request.Number = RepositoryFactory.GetRequestRepository().GetNewRequestNumber();
            request.SaveEntity();
            var editViewModel = new RequestEdit("Новая заявка", request, false, ViewService, RepositoryFactory);
            editViewModel.Refresh();
            if (ViewService.ShowViewDialog(editViewModel) != true)
                request.DeleteEntity();
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

        private void OpenDictionaryList()
        {
            ViewService.ShowViewDialog(new DictionaryList(false, ViewService, RepositoryFactory));
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}
