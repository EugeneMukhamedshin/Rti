using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace Rti.ViewModel
{
    public static class ObservableCollectionExtension
    {
        public static void ClearAndAddRange<T>(this ObservableCollection<T> collection, IEnumerable<T> range)
        {
            collection.Clear();
            foreach (var item in range)
            {
                collection.Add(item);
            }
        }
    }
}
