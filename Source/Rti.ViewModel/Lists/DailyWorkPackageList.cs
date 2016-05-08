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
    public class DailyWorkPackageList : EntityList<DailyWorkPackageViewModel, DailyWorkPackage>, IClosable
    {
        public DelegateCommand AddDailyWorkPackageCommand { get; set; }
        public DelegateCommand EditDailyWorkPackageCommand { get; set; }
        public DelegateCommand PrevPageCommand { get; set; }
        public DelegateCommand NextPageCommand { get; set; }

        public int Page { get; set; }
        public int PageSize { get; set; }
        public bool IsLastPage { get; set; }

        public DailyWorkPackageList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            AddDailyWorkPackageCommand = new DelegateCommand(
                "Добавить дневной наряд",
                o => EditMode,
                o => AddDailyWorkPackage());
            EditDailyWorkPackageCommand = new DelegateCommand(
                "Изменить дневной наряд",
                o => EditMode,
                o => EditDailyWorkPackage());
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

            Page = 0;
            PageSize = 10;
        }

        private void AddDailyWorkPackage()
        {
            var dailyWorkPackage = DoCreateNewEntity();
            var edit = new DailyWorkPackageEdit("Новый дневной наряд", dailyWorkPackage, false, ViewService, RepositoryFactory);
            edit.Refresh();
            if (ViewService.ShowViewDialog(edit) == true)
            {
                Page = 0;
                Refresh();
            }
        }

        private void EditDailyWorkPackage()
        {
            var edit = new DailyWorkPackageEdit("Новый дневной наряд", SelectedItem, false, ViewService, RepositoryFactory);
            edit.Refresh();
            ViewService.ShowViewDialog(edit);
        }

        protected override IEnumerable<DailyWorkPackageViewModel> GetItems()
        {
            var items = RepositoryFactory.GetDailyWorkPackageRepository().GetPage(Page, PageSize);
            IsLastPage = !(items.Count > PageSize);
            return items.Take(PageSize).Select(o => new DailyWorkPackageViewModel(o, RepositoryFactory)).ToList(); ;
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            PrevPageCommand.RequeryCanExecute();
            NextPageCommand.RequeryCanExecute();
        }

        protected override DailyWorkPackageViewModel DoCreateNewEntity()
        {
            return new DailyWorkPackageViewModel(null, RepositoryFactory)
            {
                Date = DateTime.Today,
                SortOrder = RepositoryFactory.GetDailyWorkPackageRepository().GetNextSortOrder()
            };
        }

        protected override void DoDeleteEntity(DailyWorkPackageViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(DailyWorkPackageViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Date);
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}
