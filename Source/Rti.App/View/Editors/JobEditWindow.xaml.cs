using System.Windows;
using Rti.ViewModel.EditViewModel;

namespace Rti.App.View.Editors
{
    /// <summary>
    /// Логика взаимодействия для JobEditWindow.xaml
    /// </summary>
    public partial class JobEditWindow : Window
    {
        public JobEditWindow()
        {
            InitializeComponent();
        }

        private void JobEditWindow_OnDataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            var viewModel = e.NewValue as JobEdit;
            if (viewModel == null) return;
            _passwordBox.Password = viewModel.Entity.Password;
        }

        private void ButtonBase_OnClick(object sender, RoutedEventArgs e)
        {
            var viewModel = DataContext as JobEdit;
            if (viewModel == null) return;
            viewModel.Entity.Password = _passwordBox.Password;
        }
    }
}
