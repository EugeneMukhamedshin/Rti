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

        protected override DrawingViewModel DoCreateNewEntity()
        {

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

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}