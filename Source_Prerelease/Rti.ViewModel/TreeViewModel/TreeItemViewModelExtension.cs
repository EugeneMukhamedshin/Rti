using System.Collections.Generic;

namespace Rti.ViewModel.TreeViewModel
{
    public static class TreeItemViewModelExtension
    {
        public static IEnumerable<IComposite> Traverse(this IEnumerable<IComposite> items)
        {
            foreach (var item in items)
            {
                yield return item;
                foreach (var child in item.Childs.Traverse())
                {
                    yield return child;
                }
            }
        }

    }
}
