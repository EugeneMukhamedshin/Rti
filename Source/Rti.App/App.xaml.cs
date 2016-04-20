using System;
using System.Globalization;
using System.Linq;
using System.Windows;
using System.Windows.Markup;
using System.Windows.Threading;
using DevExpress.Xpf.Core;
using log4net;
using log4net.Config;
using log4net.Util;
using Rti.Model.Repository.NHibernate;
using Rti.ViewModel;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Lists;

namespace Rti.App
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App
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

                var isDebug = e.Args.Any(arg => arg.ToLower().Equals("debug=true"));

                if (!isDebug)
                {
                    var mainViewModel = new MainViewModel(_viewService, repositoryFactory);
                    _viewService.ShowView(mainViewModel, false, true);
                    var loginViewModel = new LoginViewModel(_viewService, repositoryFactory);
                    _viewService.ShowViewDialog(loginViewModel);
                    if (!loginViewModel.LoggedOn)
                        mainViewModel.Close(null);
                }
                else{
                    //var request = repositoryFactory.GetRequestRepository().GetById(41);
                    //var editViewModel = new RequestEdit("Заявка", new RequestViewModel(request, repositoryFactory), false, _viewService, repositoryFactory);
                    //editViewModel.Refresh();
                    //_viewService.ShowView(editViewModel, false, true);
                    //var viewModel = new MassCalculationEdit("", new MassCalculationViewModel(repositoryFactory.GetMassCalculationRepository().GetById(0), repositoryFactory), false, _viewService, repositoryFactory);
                    var viewModel = new DrawingList(true, _viewService, repositoryFactory);
                    viewModel.Refresh();
                    _viewService.ShowView(viewModel, false, true);
                }
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

        private void OnAppStartup_UpdateThemeName(object sender, StartupEventArgs e)
        {

            ApplicationThemeHelper.UpdateApplicationThemeName();
        }
    }
}
