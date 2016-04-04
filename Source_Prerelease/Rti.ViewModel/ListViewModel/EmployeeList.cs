using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class EmployeeList : MasterDetailListViewModel<EmployeeListItem>
    {
        public EmployeeList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(EmployeeListItem), typeof(EmployeeViewModel), typeof(EmployeeEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new EmployeeViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<EmployeeListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<EmployeeListItem, EmployeeViewModel, Employee>(newEntity,
                "Добавление сотрудника", false)
                ? new EmployeeListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<EmployeeListItem, EmployeeViewModel, Employee>(((EmployeeListItem)item).Entity, "Редактирование сотрудника", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetEmployeeRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new EmployeeListItem(new EmployeeViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}