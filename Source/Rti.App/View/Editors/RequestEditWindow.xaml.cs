using System.Windows;
using Rti.Model;
using Rti.ViewModel;
using Rti.ViewModel.Entities;

namespace Rti.App.View.Editors
{
    /// <summary>
    /// Interaction logic for RequestEditWindow.xaml
    /// </summary>
    public partial class RequestEditWindow : Window
    {
        public RequestEditWindow()
        {
            InitializeComponent();
            AutoCompleteBox.ItemFilter = ItemFilter;
            AutoCompleteBox.Focus();
        }

        private bool ItemFilter(string search, object item)
        {
            var customer = item as ContragentViewModel;
            if (customer == null)
                return false;
            return search.ContainedIn(customer.Account, customer.Address, customer.Director, customer.Email, customer.Inn, customer.Name, customer.Ogrn, customer.Phone);
        }
    }
}
