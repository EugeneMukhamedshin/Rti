using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Linq.Expressions;
using System.Threading;
using System.Windows.Media.Animation;
using Rti.Model;
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
        public DelegateCommand EditDrawingCommand { get; set; }
        public DelegateCommand PrevPageCommand { get; set; }
        public DelegateCommand NextPageCommand { get; set; }
        public DelegateCommand OpenFlowsheetCommand { get; set; }
        public DelegateCommand OpenCalculationCommand { get; set; }

        public TextBoxController FindBoxController
        {
            get { return _findBoxController; }
            set
            {
                _findBoxController = value;
                OnPropertyChanged();
            }
        }

        public int Page
        {
            get { return _page; }
            set
            {
                _page = value;
                OnPropertyChanged("Page");
            }
        }

        public int PageSize
        {
            get { return _pageSize; }
            set
            {
                if (value != _pageSize)
                    _page = 0;
                _pageSize = value;
                OnPropertyChanged("PageSize");
            }
        }

        private bool _runFetch;
        private Timer _fetchTimer;
        private AsyncOperation _fetchAsyncOperation;

        public string FilterString
        {
            get { return _filter; }
            set
            {
                _runFetch = false;
                _filter = value;
                OnPropertyChanged("FilterString");
                _fetchTimer.Change(1000, Timeout.Infinite);
                _runFetch = true;
            }
        }

        public bool IsFilterEnabled
        {
            get { return _isFilterEnabled; }
            set
            {
                _isFilterEnabled = value;
                OnPropertyChanged();
            }
        }

        public bool IsLastPage { get; set; }

        public List<int> PageSizes { get; set; }
        private int _pageSize;
        private int _page;
        private string _filter;
        private bool _isFilterEnabled;
        private TextBoxController _findBoxController;

        public DrawingList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(DrawingViewModel), typeof(DrawingEdit)));
            IsLastPage = true;

            AddDrawingCommand = new DelegateCommand(
                "Добавить чертеж",
                o => true,
                o => AddDrawing());
            EditDrawingCommand = new DelegateCommand(o => EditDrawing((DrawingViewModel)o));
            PrevPageCommand = new DelegateCommand(
                "Предыдущая страница",
                o => _page > 0,
                o =>
                {
                    _page--;
                    Refresh();
                });
            NextPageCommand = new DelegateCommand(
                "Следующая страница",
                o => !IsLastPage,
                o =>
                {
                    _page++;
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

            PageSizes = new List<int>(new[] { 10, 20, 50, 100, 1000 });

            _page = 0;
            _pageSize = 20;
            _filter = null;
            IsFilterEnabled = true;

            FindBoxController = new TextBoxController();

            _fetchTimer = new Timer(FetchCallback, null, Timeout.Infinite, Timeout.Infinite);
            _fetchAsyncOperation = AsyncOperationManager.CreateOperation(null);
        }

        private void FetchCallback(object state)
        {
            if (_runFetch)
                _fetchAsyncOperation.Post(Refresh, null);
        }

        private void Refresh(object state)
        {
            IsFilterEnabled = false;
            Refresh();
        }

        private void AddDrawing()
        {
            var drawing = DoCreateNewEntity();
            if (OpenViewModelEditWindow(drawing, "Новый чертеж", false))
            {
                _page = 0;
                Refresh();
            }
        }

        private void EditDrawing(DrawingViewModel drawing)
        {
            OpenViewModelEditWindow(drawing, "Изменение", !EditMode);
            drawing.RaiseCalculationPriceChanged();
        }

        private void OpenFlowsheet()
        {
            var viewModel = new DrawingFlowsheetEdit("Технологическая карта", SelectedItem, !EditMode, ViewService, RepositoryFactory);
            viewModel.Refresh();
            if (ViewService.ShowViewDialog(viewModel) == true)
                SelectedItem.SaveEntity();
        }

        private void OpenCalculation()
        {
            var calculationEdit = new DrawingCalculationEdit("Калькуляция", SelectedItem, !EditMode, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(calculationEdit) == true)
            {
                SelectedItem.RaiseCalculationPriceChanged();
            }
        }

        protected override void OnItemsChanged()
        {
            base.OnItemsChanged();
            IsFilterEnabled = true;
            FindBoxController.RaiseActivate();
            PrevPageCommand.RequeryCanExecute();
            NextPageCommand.RequeryCanExecute();
        }

        protected override IEnumerable<DrawingViewModel> GetItems()
        {
            var items = RepositoryFactory.GetDrawingRepository().GetPage(_page, _pageSize, _filter, new List<Expression<Func<Drawing, object>>> { });
            IsLastPage = !(items.Count > _pageSize);
            return items.Take(_pageSize).Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList(); ;
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

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "PageSize")
                Refresh();
        }
    }

    public class TextBoxController : ITextBoxController
    {
        public event ActivateEventHandler Activate;

        public void RaiseActivate()
        {
            if (Activate != null)
                Activate(this);
        }
    }

    public interface ITextBoxController
    {
        event ActivateEventHandler Activate;
    }

    public delegate void ActivateEventHandler(ITextBoxController sender);
}