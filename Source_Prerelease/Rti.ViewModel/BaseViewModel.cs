using System;
using System.Collections.Concurrent;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using log4net;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Annotations;

namespace Rti.ViewModel
{
    public class BaseViewModel: INotifyPropertyChanged
    {
        private ILog _log = LogManager.GetLogger(typeof (BaseViewModel));

        private bool _isLoading;
        public IRepositoryFactory RepositoryFactory { get; set; }
        private Exception _error;
        private bool _errorAquired;

        public Exception Error
        {
            get { return _error; }
            set
            {
                _error = value;
                ErrorAquired = _error != null;
                OnPropertyChanged();
                IsLoading = false;
            }
        }

        public Boolean ErrorAquired
        {
            get { return _errorAquired; }
            set
            {
                _errorAquired = value;
                OnPropertyChanged();
            }
        }

        public virtual Boolean IsLoading
        {
            get { return _isLoading; }
            set
            {
                _isLoading = value; 
                OnPropertyChanged();
            }
        }

        private readonly ConcurrentDictionary<Task, bool> _currentTasks = new ConcurrentDictionary<Task, bool>();

        protected async void DoAsync<TResult>(
            Func<TResult> loadData,
            Action<TResult> updateViewModel)
        {
            try
            {
                IsLoading = true;
                var task = new TaskFactory<TResult>().StartNew(loadData);
                while (!_currentTasks.TryAdd(task, false)) { }
                var result = await task;
                if (updateViewModel != null)
                    updateViewModel(result);
                bool val;
                while (!_currentTasks.TryRemove(task, out val)) { }
                if (_currentTasks.IsEmpty)
                    IsLoading = false;
            }
            catch (Exception ex)
            {
                HandleException(ex);
            }
        }

        protected async void DoAsync(
            Action loadData,
            Action updateViewModel)
        {
            try
            {
                IsLoading = true;
                var task = new TaskFactory().StartNew(loadData);
                await task;
                if (updateViewModel != null) 
                    updateViewModel();
                IsLoading = false;
            }
            catch (Exception ex)
            {
                HandleException(ex);
            }
        }

        public virtual void Refresh() { }

        protected virtual void HandleException(Exception exception)
        {
            _log.Error("Произошла ошибка при обработке", exception);
            Error = exception;
        }

        protected BaseViewModel(IRepositoryFactory repositoryFactory)
        {
            RepositoryFactory = repositoryFactory;
        }

        protected BaseViewModel() { }
        public event PropertyChangedEventHandler PropertyChanged;

        [NotifyPropertyChangedInvocator]
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            var handler = PropertyChanged;
            if (handler != null) handler(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
