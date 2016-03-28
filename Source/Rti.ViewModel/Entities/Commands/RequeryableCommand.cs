using System;
using System.Windows.Input;

namespace Rti.ViewModel.Entities.Commands
{
    public abstract class RequeryableCommand: ICommand
    {
        public void RequeryCanExecute()
        {
            if (CanExecuteChanged != null)
                CanExecuteChanged(this, EventArgs.Empty);
        }

        public abstract bool CanExecute(object parameter);

        public abstract void Execute(object parameter);

        public event EventHandler CanExecuteChanged;
    }
}