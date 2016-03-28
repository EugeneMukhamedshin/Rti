namespace Rti.ViewModel
{
    public interface IViewService
    {
        void ShowView(BaseViewModel viewModel, bool topMost, bool showInTaskbar);
        void ShowSingleView(BaseViewModel viewModel, bool topMost, bool showInTaskbar);
        bool? ShowViewDialog(BaseViewModel viewModel, bool topMost = false);
        bool ShowConfirmation(MessageViewModel message);
        void ShowMessage(MessageViewModel message);
        bool ShowFileDialog(ref string fileName, string filter, bool isSave = true);
    }
}