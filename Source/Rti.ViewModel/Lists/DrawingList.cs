using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Media.Animation;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class DrawingList : EntityList<DrawingViewModel, Drawing>, IClosable
    {
        public DelegateCommand AddDrawingCommand { get; set; }
        public DelegateCommand PrevPageCommand { get; set; }
        public DelegateCommand NextPageCommand { get; set; }
        public DelegateCommand OpenFlowsheetCommand { get; set; }
        public DelegateCommand OpenCalculationCommand { get; set; }

        public int Page { get; set; }
        public int PageSize { get; set; }
        public bool IsLastPage { get; set; }

        public DrawingList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(DrawingViewModel), typeof(DrawingEdit)));

            AddDrawingCommand = new DelegateCommand(
                "Добавить чертеж",
                o => true,
                o => AddDrawing());
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
                o => !IsLastPage,
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
        }

        private void AddDrawing()
        {
            var drawing = DoCreateNewEntity();
            if (OpenViewModelEditWindow(drawing, "Новый чертеж", false))
            {
                Page = 0;
                Refresh();
            }
        }

        private void OpenFlowsheet()
        {
            if (SelectedItem.Flowsheet == null)
                SelectedItem.Flowsheet = new FlowsheetViewModel(null, RepositoryFactory);
            if (SelectedItem.Flowsheet.Drawing == null)
                SelectedItem.Flowsheet.Drawing = SelectedItem;
            var viewModel = new FlowsheetEdit("Технологическая карта", SelectedItem.Flowsheet, !EditMode, ViewService, RepositoryFactory);
            viewModel.Refresh();
            if (ViewService.ShowViewDialog(viewModel) == true)
                SelectedItem.SaveEntity();
        }

        private void OpenCalculation()
        {
            if (SelectedItem.PlanCalculation == null)
                SelectedItem.PlanCalculation = new CalculationViewModel(null, RepositoryFactory);
            if (SelectedItem.FactCalculation == null)
                SelectedItem.FactCalculation = new CalculationViewModel(null, RepositoryFactory);
            var calculationEdit = new DrawingCalculationEdit("Калькуляция", SelectedItem, !EditMode, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(calculationEdit) == true)
            {
                SelectedItem.RaiseCalculationPriceChanged();
            }
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            PrevPageCommand.RequeryCanExecute();
            NextPageCommand.RequeryCanExecute();
        }

        protected override IEnumerable<DrawingViewModel> GetItems()
        {
            var items = RepositoryFactory.GetDrawingRepository().GetPage(Page, PageSize);
            IsLastPage = !(items.Count > PageSize);
            return items.Take(PageSize).Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override DrawingViewModel DoCreateNewEntity()
        {
            return new DrawingViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetDrawingRepository().GetNextSortOrder(),
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