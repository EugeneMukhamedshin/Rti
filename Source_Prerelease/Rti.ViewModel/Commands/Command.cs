namespace Rti.ViewModel.Commands
{
    public abstract class Command
    {
        public bool Cancelled { get; protected set; }

        public HistoryContext HistoryContext { get; private set; }

        protected bool AddToHistory { get; set; }

        public Command(HistoryContext historyContext)
        {
            HistoryContext = historyContext;
            AddToHistory = true;
            Cancelled = false;
        }

        public void Execute()
        {
            var executionInfo = new CommandExecutionInfo();
            executionInfo.AddToHistory = true;
            DoExecute(executionInfo);
            if (Cancelled)
                return;
            if (executionInfo.AddToHistory)
                HistoryContext.AddToHistory(this);
            Cancelled = false;
        }

        public void Cancel()
        {
            DoCancel();
            Cancelled = true;
        }

        protected abstract void DoExecute(CommandExecutionInfo executionInfo);

        protected abstract void DoCancel();
    }
}