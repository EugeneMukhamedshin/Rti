using System;
using log4net;
using log4net.Util;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class EditViewModel<TObject> : BaseViewModel, IClosable, IValidatable
    {
        private ILog _log = LogManager.GetLogger(typeof(EditViewModel<>));

        private string _name;
        protected readonly IViewService ViewService;
        private TObject _entity;

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
                o => Editable || CustomOkCommandCanExecute(),
                o => SaveAndClose());

            CancelCommand = new DelegateCommand(
                "Отмена",
                o => true,
                o => Close(false));
            CloseCommand = new DelegateCommand(o => Close(true));

            Initialize();
        }

        protected virtual bool CustomOkCommandCanExecute()
        {
            return false;
        }

        private void Initialize()
        {
            OnInitialize();
        }

        protected virtual void OnInitialize() { }

        public TObject Entity
        {
            get { return _entity; }
            set { _entity = value; }
        }

        public bool Validate()
        {
            return DoValidate();
        }

        protected virtual bool DoValidate() { return true; }

        public bool Save()
        {
            if (!Validate())
                return false;
            try
            {
                DoSave();
            }
            catch (Exception ex)
            {
                _log.ErrorExt("Произошла ошибка при сохранении", ex);
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Произошла ошибка при сохранении.", true));
                return false;
            }
            return true;
        }

        public void SaveAndClose()
        {
            if (Save())
                Close(true);
        }

        protected virtual void DoSave() { }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
        public DelegateCommand CloseCommand { get; set; }
    }
}