using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class DrawingList : EntityList<DrawingViewModel, Drawing>, IClosable
    {
        public DelegateCommand PrevPageCommand { get; set; }
        public DelegateCommand NextPageCommand { get; set; }
        public DelegateCommand OpenFlowsheetCommand { get; set; }
        public DelegateCommand OpenCalculationCommand { get; set; }

        public int Page { get; set; }
        public int PageSize { get; set; }

        public DrawingList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(DrawingViewModel), typeof(DrawingEdit)));

            PrevPageCommand = new DelegateCommand(
                "Предыдущая страница",
                o => Page > 0,
                o =>
                {
                    Page--; 
                    Refresh();
                });
            NextPageCommand = new DelegateCommand(
                "Следующая страница",
                o => true,
                o =>
                {
                    Page++;
                    Refresh();
                });
            OpenFlowsheetCommand = new DelegateCommand(
               "Технологическая карта",
               o => SelectedItem != null,
               o => OpenFlowsheet());
            OpenCalculationCommand = new DelegateCommand(
                "Калькуляция",
                o => SelectedItem != null,
                o => OpenCalculation());

            Page = 0;
            PageSize = 15;

            InitializeSources();
        }

        private void InitializeSources()
        {
        }

        private void OpenFlowsheet()
        {
            var flowsheet = new FlowsheetViewModel(RepositoryFactory.GetFlowsheetRepository().GetByDrawingId(SelectedItem.Id), RepositoryFactory);
            flowsheet.Drawing = SelectedItem;
            var viewModel = new FlowsheetEdit("Технологическая карта", flowsheet, !EditMode, ViewService, RepositoryFactory);
            viewModel.Refresh();
            if (ViewService.ShowViewDialog(viewModel) == true)
            {
                viewModel.Entity.SaveEntity();
                viewModel.FlowsheetMachineList.SaveChanges();
                viewModel.FlowsheetProcessList.SaveChanges();
            }
        }

        private void OpenCalculation()
        {
            var planCalculation = new CalculationViewModel(RepositoryFactory.GetCalculationRepository().GetByDrawingId(SelectedItem.Id, CalculationType.Plan), RepositoryFactory);
            planCalculation.Drawing = SelectedItem;
            planCalculation.CalculationTypeEnum = CalculationType.Plan;
            var factCalculation = new CalculationViewModel(RepositoryFactory.GetCalculationRepository().GetByDrawingId(SelectedItem.Id, CalculationType.Fact), RepositoryFactory);
            factCalculation.Drawing = SelectedItem;
            factCalculation.CalculationTypeEnum = CalculationType.Fact;
            var drawingCalculation = new DrawingCalculationViewModel(planCalculation, factCalculation);
            var calculationEdit = new DrawingCalculationEdit("Калькуляция", drawingCalculation, !EditMode, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(calculationEdit) == true)
            {
                drawingCalculation.Save();
            }
        }

        public override void Refresh()
        {
            base.Refresh();
            PrevPageCommand.RequeryCanExecute();
            NextPageCommand.RequeryCanExecute();
        }

        protected override IEnumerable<DrawingViewModel> GetItems()
        {
            return RepositoryFactory.GetDrawingRepository().GetPage(Page, PageSize).Select(o => new DrawingViewModel(o, RepositoryFactory));
        }

        protected override DrawingViewModel DoCreateNewEntity()
        {
            return new DrawingViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
                CreationDate = DateTime.Now,
                Name = "Новый чертеж"
            };
        }

        protected override void DoDeleteEntity(DrawingViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(DrawingViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note, entity.SortOrder);
        }

        protected override void RequeryCommandsOnSelectionChanged()
        {
            base.RequeryCommandsOnSelectionChanged();
            OpenFlowsheetCommand.RequeryCanExecute();
            OpenCalculationCommand.RequeryCanExecute();
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}