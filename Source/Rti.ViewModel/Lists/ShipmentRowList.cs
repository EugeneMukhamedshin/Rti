using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;
using Rti.ViewModel.Reporting.ViewModel;

namespace Rti.ViewModel.Lists
{
    public class ShipmentRowList : ObjectList<ShipmentRow>
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
        public DelegateCommand EditShipmentCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }
        public DelegateCommand PrintCommand { get; set; }

        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }

        public ShipmentRowList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(ShipmentViewModel), typeof(EditViewModel.ShipmentEdit)));

            AddShipmentCommand = new DelegateCommand(
               "Добавить отгрузку",
               o => true,
               o => AddShipment());
            EditShipmentCommand = new DelegateCommand(
                "Изменить",
                o => o != null,
                EditShipment);
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
            var shipment = new ShipmentViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
            };
            shipment.GetSortOrder();
            shipment.DeliveryDocNumber = shipment.SortOrder;
            shipment.DeliveryDocDate = shipment.Date;
            var view = new ShipmentEdit("Новая отгрузка", shipment, false, ViewService, RepositoryFactory);
            view.Refresh();
            ViewService.ShowViewDialog(view);
            Refresh();
        }

        private void EditShipment(object o)
        {
            var shipmentRow = o as ShipmentRow;
            if (shipmentRow == null)
                return;
            var shipment = new ShipmentViewModel(RepositoryFactory.GetShipmentRepository().GetById(shipmentRow.Id), RepositoryFactory);
            var view = new ShipmentEdit($"Отгрузка №{shipment.FullNumber} от {shipment.Date:dd.MM.yyyyг.}", shipment, false, ViewService, RepositoryFactory);
            view.Refresh();
            ViewService.ShowViewDialog(view);
            Refresh();
        }

        protected override IEnumerable<ShipmentRow> GetItems()
        {
            var shipments = RepositoryFactory.GetShipmentRepository()
                .GetRowsByPeriod(StartDate, EndDate, SelectedCustomer?.Id, SelectedDrawing?.Id)
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
                        new List<ContragentViewModel> { null }
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
                        new List<DrawingViewModel>(new[] { (DrawingViewModel)null }
                            .Union(res)));
        }

        public void Print()
        {
            var viewModel = new ShipmentListReportViewModel("Реестр отгрузок", Items, ViewService,
                RepositoryFactory, Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports"),$"Реестр отгрузок {StartDate:dd.MM.yyyy}-{EndDate:dd.MM.yyyy}.xls")
            {
                ExtensionFilter = "Файлы Excel (*.xls)|*.xls",
                StartDate = StartDate,
                EndDate = EndDate
            };
            viewModel.GenerateReport();
        }

        protected override ShipmentRow DoCreateNewEntity()
        {
            var shipment = new ShipmentViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
            };
            shipment.GetSortOrder();
            shipment.DeliveryDocNumber = shipment.SortOrder;
            shipment.DeliveryDocDate = shipment.Date;
            return new ShipmentRow();
        }

        protected override void DoDeleteEntity(ShipmentRow entity)
        {
            var repository = RepositoryFactory.GetShipmentRepository();
            var shipment = repository.GetById(entity.Id);
            shipment.IsDeleted = true;
            repository.Update(shipment);
        }

        protected override void RequeryCommandsOnSelectionChanged()
        {
            base.RequeryCommandsOnSelectionChanged();
            EditShipmentCommand.RequeryCanExecute();
        }

        protected override bool AcceptFind(ShipmentRow entity, string searchText)
        {
            return false;
        }
    }
}
