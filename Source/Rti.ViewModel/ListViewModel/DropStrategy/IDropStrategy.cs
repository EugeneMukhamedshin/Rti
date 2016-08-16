using Rti.ViewModel.Commands;

namespace Rti.ViewModel.ListViewModel.DropStrategy
{
    public interface IDropStrategy
    {
        void AcceptDropped(MasterDetailListItemViewModel item, MasterDetailListItemViewModel droppedItem, CommandExecutionInfo executionInfo, ref DropCancelInfo dropCancelInfo);
    }
}