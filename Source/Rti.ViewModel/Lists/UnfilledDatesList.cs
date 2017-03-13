using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class UnfilledWorkItemDateList : BaseViewModel, IClosable
    {
        private DateTime _startDate;
        private DateTime _endDate;
        private ObservableCollection<DateTime> _items;
        private DateTime _selectedDate;
        public IViewService ViewService { get; }

        public DateTime StartDate
        {
            get { return _startDate; }
            set
            {
                _startDate = value;
                OnPropertyChanged();
            }
        }

        public DateTime EndDate
        {
            get { return _endDate; }
            set
            {
                _endDate = value;
                OnPropertyChanged();
            }
        }

        public ObservableCollection<DateTime> Items
        {
            get { return _items; }
            set
            {
                _items = value;
                OnPropertyChanged();
            }
        }

        public DateTime SelectedDate
        {
            get { return _selectedDate; }
            set
            {
                _selectedDate = value;
                OnPropertyChanged();
            }
        }

        public DelegateCommand OpenDateCommand { get; set; }
        public DelegateCommand RefreshCommand { get; set; }
        public DelegateCommand CloseCommand { get; set; }

        public UnfilledWorkItemDateList(IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            ViewService = viewService;
            OpenDateCommand = new DelegateCommand(o => OpenDate());
            RefreshCommand = new DelegateCommand(o => Refresh());
            CloseCommand= new DelegateCommand(o => Close(true));
        }

        private void OpenDate()
        {
            var viewModel = new WorkItemList(true, ViewService, RepositoryFactory) { Date = SelectedDate };
            viewModel.Refresh();
            ViewService.ShowViewDialog(viewModel);
        }

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(() => RepositoryFactory.GetWorkItemRepository().GetUnfilledDates(StartDate, EndDate).OrderByDescending(o => o).ToList(), SetItems);
        }

        private void SetItems(IEnumerable<DateTime> res)
        {
            Items = new ObservableCollection<DateTime>(res);
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}