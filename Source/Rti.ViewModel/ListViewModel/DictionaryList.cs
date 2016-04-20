using System;
using System.Collections.ObjectModel;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class DictionaryList : MasterDetailListViewModel<DictionaryListItem>
    {
        private readonly DictionaryListItem _constantDictionaryListItem;

        public DictionaryList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            _constantDictionaryListItem = new DictionaryListItem(this, RepositoryFactory)
            {
                Name = "Константы",
                DictionaryViewModel = new ConstantEdit("Константы", false, ViewService, RepositoryFactory),
            };
            RootItems = new ObservableCollection<MasterDetailListItemViewModel>(
                new []
                {
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Материалы", DictionaryViewModel = new MaterialList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Группы", DictionaryViewModel = new GroupList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Детали", DictionaryViewModel = new DetailList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Способы изготовления", DictionaryViewModel = new MethodList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Заказчики", DictionaryViewModel = new ContragentList(ContragentType.Customer, true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Поставщики", DictionaryViewModel = new ContragentList(ContragentType.Supplier, true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Должности", DictionaryViewModel = new JobList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Сотрудники", DictionaryViewModel = new EmployeeList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Единицы измерения", DictionaryViewModel = new MeasureUnitList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Водители", DictionaryViewModel = new DriverList(true, ViewService, RepositoryFactory) },
                    //new DictionaryListItem(this, RepositoryFactory) { Name = "Оснастка", DictionaryViewModel = new EquipmentList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Доп. информация", DictionaryViewModel = new AdditionalInfoList(true, ViewService, RepositoryFactory) },
                    new DictionaryListItem(this, RepositoryFactory) { Name = "Оборудование", DictionaryViewModel = new MachineList(true, ViewService, RepositoryFactory) },
                    _constantDictionaryListItem
                });
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            return null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            if (item == _constantDictionaryListItem)
            {
                var constant = new ConstantViewModel(RepositoryFactory.GetConstantRepository().GetActual(), RepositoryFactory);
                ((ConstantEdit)_constantDictionaryListItem.DictionaryViewModel).Entity = constant;
                if (ViewService.ShowViewDialog(_constantDictionaryListItem.DictionaryViewModel) == true)
                    constant.SaveEntity();
                return true;
            }
            var viewModel = ((DictionaryListItem) item).DictionaryViewModel;
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
            return false;
        }
    }
}
