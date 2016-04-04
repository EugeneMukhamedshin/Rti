using System;
using System.Linq;
using System.Windows.Controls;
using System.Windows.Interactivity;

namespace Rti.App.View.Lists
{
    public class ScrollToSelectedItemBehavior: Behavior<ListView>
    {
        protected override void OnAttached()
        {
            base.OnAttached();
            AssociatedObject.SelectionChanged += ScrollToSelectedItemBehavior_SelectionChanged;
        }

        protected override void OnDetaching()
        {
            base.OnDetaching();
            AssociatedObject.SelectionChanged -= ScrollToSelectedItemBehavior_SelectionChanged;
        }

        private void ScrollToSelectedItemBehavior_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.AddedItems.Cast<Object>().FirstOrDefault();
            if (selectedItem != null)
                AssociatedObject.ScrollIntoView(selectedItem);
        }
    }
}
