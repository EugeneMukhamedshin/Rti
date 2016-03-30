using System;
using System.Globalization;
using System.Windows;
using System.Windows.Markup;
using System.Windows.Threading;
using log4net;
using log4net.Config;
using log4net.Util;
using Rti.Model.Repository.NHibernate;
using Rti.ViewModel;

namespace Rti.App
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        private readonly ILog _log = LogManager.GetLogger(typeof(App));
        private IViewService _viewService;

        protected override void OnStartup(StartupEventArgs e)
        {
            try
            {
                XmlConfigurator.Configure();
                DispatcherUnhandledException += App_DispatcherUnhandledException;
                var language = XmlLanguage.GetLanguage(CultureInfo.CurrentCulture.IetfLanguageTag);
                FrameworkElement.LanguageProperty.OverrideMetadata(
                    typeof(FrameworkElement),
                    new FrameworkPropertyMetadata(language));
                base.OnStartup(e);
                var repositoryFactory = new NHibernateRepositoryFactory();
                _viewService = new ViewService();
                var mainViewModel = new MainViewModel(_viewService, repositoryFactory);
                _viewService.ShowView(mainViewModel, false, true);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        void App_DispatcherUnhandledException(object sender, DispatcherUnhandledExceptionEventArgs e)
        {
            _log.ErrorExt("Необработанная ошибка", e.Exception);
            MessageBox.Show(@"Произошла ошибка в приложении. 
" + e.Exception.Message + @"
Информация об ошибке в логе.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            e.Handled = true;
        }
    }
}
