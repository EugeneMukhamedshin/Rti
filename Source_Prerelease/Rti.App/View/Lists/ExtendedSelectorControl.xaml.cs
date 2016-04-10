using System.Windows;
using System.Windows.Controls;
using Rti.ViewModel.ListViewModel;

namespace Rti.App.View.Lists
{
    /// <summary>
    /// Логика взаимодействия для ExtendedSelectorControl.xaml
    /// </summary>
    public partial class ExtendedSelectorControl : UserControl
    {
        public string ValueMemberPath
        {
            get { return AutoCompleteBox.ValueMemberPath; }
            set { AutoCompleteBox.ValueMemberPath = value; }
        }

        public DataTemplate ItemTemplate { get; set; }

        public ExtendedSelectorControl()
        {
            InitializeComponent();
            AutoCompleteBox.ItemFilter = ItemFilter;
            AutoCompleteBox.Focus();
        }

        private bool ItemFilter(string search, object item)
        {
            var selector = DataContext as IExtendedSelectorViewModel;
            if (selector == null || selector.SelectorItemFilterFunc == null)
                return false;
            return selector.SelectorItemFilterFunc(search, item);
        }
    }
}
