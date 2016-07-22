using System;

namespace Rti.ViewModel.Entities.Commands
{
    public class DelegateCommand : RequeryableCommand
    {
        private readonly Func<Object, Boolean> _canExecute;
        private readonly Action<Object> _execute;

        public DelegateCommand(String name, Func<Object, Boolean> canExecute, Action<Object> execute)
        {
            Name = name;
            _canExecute = canExecute;
            _execute = execute;
        }

        public DelegateCommand(Func<Object, Boolean> canExecute, Action<Object> execute)
        {
            _canExecute = canExecute;
            _execute = execute;
        }

        public DelegateCommand(Action<Object> execute)
        {
            _execute = execute;
        }

        public string Name { get; set; }

        public virtual bool IsAvailable { get { return true; } }

        public override bool CanExecute(object parameter)
        {
            return _canExecute == null || _canExecute(parameter);
        }

        public override void Execute(object parameter)
        {
            if (_canExecute != null && !_canExecute(parameter))
                return;
            bool cancel;
            BeforeExecute(parameter, out cancel);
            if (cancel) return;
            _execute(parameter);
            AfterExecute(parameter);
        }

        protected virtual void BeforeExecute(object parameter, out bool cancel)
        {
            cancel = false;
        }

        protected virtual void AfterExecute(object parameter) { }
    }
}
