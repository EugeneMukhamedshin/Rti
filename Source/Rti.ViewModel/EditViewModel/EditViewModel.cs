using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class EditViewModel<TObject> : BaseViewModel, IWindowCloser, IValidatable
    {
        private string _name;
        protected readonly IViewService ViewService;

        public DelegateCommand OkCommand { get; set; }
        public DelegateCommand CancelCommand { get; set; }

        public string Name
        {
            get { return _name; }
            set
            {
                if (value == _name) return;
                _name = value;
                OnPropertyChanged();
            }
        }

        public bool ReadOnly { get; set; }

        public bool Editable { get { return !ReadOnly; } }

        public EditViewModel(string name, TObject entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            ReadOnly = readOnly;
            _name = name;
            ViewService = viewService;
            Entity = entity;

            OkCommand = new DelegateCommand(
                "ОК",
                o => Editable,
                o => CloseWindow(this, true));

            CancelCommand = new DelegateCommand(
                "Отмена",
                o => true,
                o => CloseWindow(this, false));

            CloseWindow = (model, b) => { };
            Initialize();
        }

        private void Initialize()
        {
            OnInitialize();
        }

        protected virtual void OnInitialize() { }

        public TObject Entity { get; set; }

        public bool Validate()
        {
            return DoValidate();
        }

        protected virtual bool DoValidate() { return true; }

        public Action<BaseViewModel, bool> CloseWindow { get; set; }
    }

    public class EditEntityViewModel<TEntityViewModel, TEntity> : EditViewModel<TEntityViewModel>
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel> 
        where TEntity : class, IIdentifiedEntity, new()
    {
        public EditEntityViewModel(string name, TEntityViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }
    }
}