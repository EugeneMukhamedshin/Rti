using System;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.TreeViewModel
{
    public interface ITreeItemViewModel: IComposite
    {
        Boolean IsExpanded { get; set; }
        Boolean IsSelected { get; set; }
        String Name { get; }
        DelegateCommand OpenCommand { get; }
        ITreeItemViewModel ParentItem { get; }
        bool AcceptFind(string text);
    }
}