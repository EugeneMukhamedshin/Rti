using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using Rti.ViewModel;

namespace Rti.App
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as LoginViewModel;
            if (viewModel == null) return;
            viewModel.Password = PasswordBox.Password;

        }

        private void LoginWindow_OnLoaded(object sender, RoutedEventArgs e)
        {
            LoginBox.Focus();
        }

        private void PasswordBox_OnGotFocus(object sender, RoutedEventArgs e)
        {
            PasswordBox.SelectAll();
        }

        private void LoginBox_OnGotFocus(object sender, RoutedEventArgs e)
        {
            LoginBox.SelectAll();
        }
    }
}
