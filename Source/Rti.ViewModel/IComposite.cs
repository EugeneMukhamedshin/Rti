using System.Collections.ObjectModel;

namespace Rti.ViewModel
{
    public interface IComposite
    {
        ObservableCollection<IComposite> Childs { get; }
    }
}