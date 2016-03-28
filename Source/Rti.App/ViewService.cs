using System;
using System.Collections.Generic;
using System.Windows;
using Rti.ViewModel;
using Application = System.Windows.Application;
using MessageBox = System.Windows.MessageBox;

namespace Rti.App
{
    public class ViewService : IViewService
    {
        private Dictionary<Type, Type> _registry = new Dictionary<Type, Type>();

        public ViewService()
        {
        }

        public void ShowView(BaseViewModel viewModel, bool topMost, bool showInTaskbar)
        {
            var window = GetWindow(viewModel);
            window.Topmost = topMost;
            window.ShowInTaskbar = showInTaskbar;
            window.Show();
        }

        private readonly Dictionary<BaseViewModel, Window> _singleViews = new Dictionary<BaseViewModel, Window>();

        public void ShowSingleView(BaseViewModel viewModel, bool topMost, bool showInTaskbar)
        {
            Window window;
            if (_singleViews.ContainsKey(viewModel))
                window = _singleViews[viewModel];
            else
            {
                window = GetWindow(viewModel);
                window.Topmost = topMost;
                window.ShowInTaskbar = showInTaskbar;
                _singleViews.Add(viewModel, window);
            }
            window.Show();
        }

        public bool? ShowViewDialog(BaseViewModel viewModel, bool topMost = false)
        {
            var window = GetWindow(viewModel);
            window.WindowStartupLocation = WindowStartupLocation.CenterScreen;
            window.Owner = Application.Current.MainWindow;
            window.Topmost = topMost;
            window.ShowInTaskbar = false;
            return window.ShowDialog();
        }

        public bool ShowConfirmation(MessageViewModel message)
        {
            return MessageBox.Show(message.Message, message.Name, MessageBoxButton.YesNo) == MessageBoxResult.Yes;
        }

        public void ShowMessage(MessageViewModel message)
        {
            MessageBox.Show(message.Message, message.Name, MessageBoxButton.OK, message.IsError ? MessageBoxImage.Error : MessageBoxImage.Information);
        }

        public bool ShowFileDialog(ref string fileName, string filter, bool isSave = true)
        {
            //if (isSave)
            //    using (var fileDialog = new SaveFileDialog())
            //    {
            //        fileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            //        fileDialog.FileName = fileName;
            //        fileDialog.Filter = filter;
            //        var res = fileDialog.ShowDialog() == DialogResult.OK;
            //        fileName = fileDialog.FileName;
            //        return res;
            //    }
            //else
            //    using (var fileDialog = new OpenFileDialog())
            //    {
            //        fileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            //        fileDialog.FileName = fileName;
            //        fileDialog.Filter = filter;
            //        var res = fileDialog.ShowDialog() == DialogResult.OK;
            //        fileName = fileDialog.FileName;
            //        return res;
            //    }
            return false;
        }

        private Window GetWindow(BaseViewModel viewModel)
        {
            if (viewModel == null)
                throw new ArgumentNullException("viewModel");
            Type windowType;
            if (!_registry.TryGetValue(viewModel.GetType(), out windowType))
                throw new InvalidOperationException(String.Format("��� ���� {0} �� ��������������� ��� ����",
                    viewModel.GetType().Name));
            if (!windowType.IsSubclassOf(typeof(Window)))
                throw new InvalidOperationException(String.Format("��� ���� {0} ��������������� �������� ��� ���� {1}",
                    viewModel.GetType().Name, windowType.Name));
            var window = (Window)Activator.CreateInstance(windowType);
            window.DataContext = viewModel;
            if (viewModel is IWindowCloser)
                ((IWindowCloser) viewModel).CloseWindow = (entity, res) =>
                {
                    if (res && (entity is IValidatable) && !((IValidatable)entity).Validate())
                        return;
                    window.DialogResult = res;
                    window.Close();
                };
            return window;
        }

        public Window MainWindow { get; set; }
    }
}