using System;
using System.Collections.Generic;
using System.Linq;

namespace Rti.ViewModel.Commands
{
    public class HistoryContext
    {
        private Stack<Command> _history = new Stack<Command>();
        private Stack<Command> _trash = new Stack<Command>();

        public event EventHandler HistoryChanged;

        public void AddToHistory(Command command)
        {
            _history.Push(command);
            _trash.Clear();
            OnHistoryChanged();
        }

        public void Undo()
        {
            if (!CanUndo)
                return;
            var command = _history.Pop();
            command.Cancel();
            _trash.Push(command);
            OnHistoryChanged();
        }

        public void Redo()
        {
            if (!CanRedo)
                return;
            var command = _trash.Pop();
            command.Execute();
            _history.Push(command);
            OnHistoryChanged();
        }

        public bool CanUndo { get { return _history.Any(); } }

        public bool CanRedo { get { return _trash.Any(); } }

        protected virtual void OnHistoryChanged()
        {
            if (HistoryChanged != null) 
                HistoryChanged.Invoke(this, EventArgs.Empty);
        }
    }
}