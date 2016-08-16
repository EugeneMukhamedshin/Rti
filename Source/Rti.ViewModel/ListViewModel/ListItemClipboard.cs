using System.Collections.Generic;
using System.Linq;

namespace Rti.ViewModel.ListViewModel
{
    public class ListItemClipboard
    {
        private static ListItemClipboard _instance;

        public static ListItemClipboard Instance
        {
            get { return _instance ?? (_instance = new ListItemClipboard()); }
        }

        private List<MasterDetailListItemViewModel> _items;

        private ListItemClipboard()
        {
            _items = new List<MasterDetailListItemViewModel>();
        }

        public bool IsEmpty() { return !_items.Any(); }

        public void SetItems(IEnumerable<MasterDetailListItemViewModel> items)
        {
            _items = new List<MasterDetailListItemViewModel>(items.Select(item => item.GetCopy(item.Parent, null)));
        }

        public List<MasterDetailListItemViewModel> GetItems()
        {
            return new List<MasterDetailListItemViewModel>(_items);
        }
    }
}