using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Lists
{
    public class ShipmentList : EntityList<ShipmentViewModel, Shipment>
    {
        private ContragentViewModel _selectedCustomer;
        private DrawingViewModel _selectedDrawing;
        private List<DrawingViewModel> _drawingsSource;

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public List<DrawingViewModel> DrawingsSource
        {
            get { return _drawingsSource; }
            set
            {
                _drawingsSource = value;
                OnPropertyChanged();
            }
        }

        public ContragentViewModel SelectedCustomer
        {
            get { return _selectedCustomer; }
            set
            {
                _selectedCustomer = value;
                OnPropertyChanged();
            }
        }

        public DrawingViewModel SelectedDrawing
        {
            get { return _selectedDrawing; }
            set
            {
                _selectedDrawing = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand AddShipmentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }
        public DelegateCommand PrintCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public ShipmentList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(ShipmentViewModel), typeof(EditViewModel.ShipmentEdit)));

            AddShipmentCommand = new DelegateCommand(
               "Добавить отгрузку",
               o => true,
               o => AddShipment());
            RefreshCommand = new DelegateCommand(
                "Обновить",
                o => true,
                o => Refresh());
            PrintCommand = new DelegateCommand(
                "Печать",
                o => true,
                o => Print());
            StartDate = DateTime.Today.AddMonths(-1);
            EndDate = DateTime.Today;
        }

        private void AddShipment()
        {
            var record = DoCreateNewEntity();
            if (OpenViewModelEditWindow(record, "Новая отгрузка", false) && StartDate <= record.Date && record.Date <= EndDate)
                Items.Add(record);
        }

        protected override IEnumerable<ShipmentViewModel> GetItems()
        {
            var shipments = RepositoryFactory.GetShipmentRepository()
                .GetByPeriod(StartDate, EndDate, SelectedCustomer?.Id, SelectedDrawing?.Id)
                .Select(o => new ShipmentViewModel(o, RepositoryFactory) { })
                .OrderBy(o => o.SortOrder)
                .ToList();
            return shipments;
        }

        public override void Refresh()
        {
            base.Refresh();
            CustomersSource =
                new Lazy<List<ContragentViewModel>>(
                    () =>
                        new List<ContragentViewModel> {null}
                            .Union(
                                RepositoryFactory.GetContragentRepository()
                                    .GetAllActive(ContragentType.Customer)
                                    .Select(o => new ContragentViewModel(o, RepositoryFactory)))
                            .ToList());
            DoAsync(
                () => RepositoryFactory.GetDrawingRepository()
                    .GetAllActive()
                    .Select(o => new DrawingViewModel(o, RepositoryFactory)),
                res =>
                    DrawingsSource =
                        new List<DrawingViewModel>(new[] {(DrawingViewModel) null}
                            .Union(res)));
        }

        public void Print()
        {
            var viewModel = new ShipmentListReportViewModel("Реестр отгрузок", Items, ViewService,
                RepositoryFactory, Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"),
                $"Реестр отгрузок {StartDate:dd.MM.yyyy}-{EndDate:dd.MM.yyyy}.xls")
            {
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls",
                StartDate = StartDate,
                EndDate = EndDate
            };
            viewModel.GenerateReport();
        }

        protected override ShipmentViewModel DoCreateNewEntity()
        {
            var shipment = new ShipmentViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
            };
            shipment.GetSortOrder();
            shipment.DeliveryDocNumber = shipment.SortOrder;
            shipment.DeliveryDocDate = shipment.Date;
            return shipment;
        }

        protected override void DoDeleteEntity(ShipmentViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(ShipmentViewModel entity, string searchText)
        {
            return false;
        }
    }
}
