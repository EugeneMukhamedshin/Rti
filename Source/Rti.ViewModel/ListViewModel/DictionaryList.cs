using System;
using System.Collections.ObjectModel;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;

namespace Rti.ViewModel.ListViewModel
{
    public class DictionaryList : MasterDetailListViewModel<DictionaryListItem>
    {
        public DictionaryList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            RootItems = new ObservableCollection<MasterDetailListItemViewModel>(
                new []
                {
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Материалы", DictionaryViewModel = new MaterialList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Группы", DictionaryViewModel = new GroupList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Детали", DictionaryViewModel = new DetailList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Способы изготовления", DictionaryViewModel = new MethodList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Заказчики", DictionaryViewModel = new ContragentList(0, true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Поставщики", DictionaryViewModel = new ContragentList(1, true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Должности", DictionaryViewModel = new JobList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Сотрудники", DictionaryViewModel = new EmployeeList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Единицы измерения", DictionaryViewModel = new MeasureUnitList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Водители", DictionaryViewModel = new DriverList(true, ViewService, RepositoryFactory) },
                });
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            return null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            var viewModel = ((DictionaryListItem) item).DictionaryViewModel;
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
            return false;
        }
    }
}
