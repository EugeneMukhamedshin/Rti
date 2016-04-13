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
        //public DelegateCommand AddDrawingCommand { get; set; }
        //public DelegateCommand OpenMassCalculationCommand { get; set; }
        public DelegateCommand PrevPageCommand { get; set; }
        public DelegateCommand NextPageCommand { get; set; }

        public int Page { get; set; }
        public int PageSize { get; set; }

        public DrawingList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            //AddDrawingCommand = new DelegateCommand(
            //    "Добавить новый чертеж",
            //    o => true,
            //    o => AddDrawing());
            //OpenMassCalculationCommand = new DelegateCommand(
            //    "Открыть расчет массы",
            //    o => true,
            //    o => OpenMassCalculation());
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
            Page = 0;
            PageSize = 15;

            InitializeSources();
        }

        private void InitializeSources()
        {
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

        //private void AddDrawing()
        //{
        //    var drawing = DoCreateNewEntity();
        //    Items.Add(drawing);
        //    SelectedItem = drawing;
        //}

        protected override DrawingViewModel DoCreateNewEntity()
        {

            //var drawing = new DrawingViewModel(null, RepositoryFactory)
            //{
            //    SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
            //    Name = "Новый чертеж"
            //};
            //OpenViewModelEditWindow(drawing, "Новый чертеж", false);
            return new DrawingViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
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

        protected override void OnSelectedItemChanging()
        {
            base.OnSelectedItemChanging();
            //if (SelectedItem != null)
            //    try
            //    {
            //        if (SelectedItem.IsChanged)
            //            SelectedItem.SaveEntity();
            //    }
            //    catch (ValidateException ex)
            //    {
            //        ViewService.ShowMessage(new MessageViewModel("Ошибка", ex.Message, true));
            //    }
        }

        private void OpenMassCalculation()
        {
        }

        public bool CanClose()
        {
            //if (Items.Any(drawing => !drawing.IsValid))
            //{
            //    return
            //        ViewService.ShowConfirmation(new MessageViewModel("Внимание",
            //            "Есть записи с ошибками, они не будут сохранены. Закрыть окно?", true));
            //}
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}