using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Rti.ViewModel.ListViewModel;

namespace Rti.App.View.Lists
{
    public class ListItemStyleSelector : StyleSelector
    {
        public Style Branch1Style { get; set; }

        public Style LeafStyle { get; set; }

        public override Style SelectStyle(object item, DependencyObject container)
        {
            var listItem = item as MasterDetailListItemViewModel;
            if (listItem == null)
                return null;
            if (listItem.Parent == null)
                return Branch1Style;
            if (!listItem.ChildItems.Any())
                return LeafStyle;
            return base.SelectStyle(item, container);
        }
    }
}