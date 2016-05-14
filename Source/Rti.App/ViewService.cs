using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Forms;
using Rti.App.View.Editors;
using Rti.App.View.Lists;
using Rti.ViewModel;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Lists;
using Rti.ViewModel.ListViewModel;
using Application = System.Windows.Application;
using ContragentList = Rti.ViewModel.Lists.ContragentList;
using DrawingList = Rti.ViewModel.Lists.DrawingList;
using EmployeeList = Rti.ViewModel.Lists.EmployeeList;
using EquipmentList = Rti.ViewModel.Lists.EquipmentList;
using MaterialList = Rti.ViewModel.Lists.MaterialList;
using MessageBox = System.Windows.MessageBox;

namespace Rti.App
{
    public class ViewService : IViewService
    {
        private Dictionary<Type, Type> _registry = new Dictionary<Type, Type>();

        public ViewService()
        {
            AddToRegistry<LoginViewModel, LoginWindow>();

            AddToRegistry<MainViewModel, MainWindow>();

            // �����������
            AddToRegistry<MaterialList, MaterialListWindow>();
            AddToRegistry<MaterialEdit, MaterialEditWindow>();
            AddToRegistry<GroupList, GroupListWindow>();
            AddToRegistry<GroupEdit, GroupEditWindow>();
            AddToRegistry<DetailList, DetailListWindow>();
            AddToRegistry<DetailEdit, DetailEditWindow>();
            AddToRegistry<MethodList, MethodListWindow>();
            AddToRegistry<MethodEdit, MethodEditWindow>();
            AddToRegistry<ContragentList, ContragentListWindow>();
            AddToRegistry<ContragentEdit, ContragentEditWindow>();
            AddToRegistry<JobList, JobListWindow>();
            AddToRegistry<JobEdit, JobEditWindow>();
            AddToRegistry<EmployeeList, EmployeeListWindow>();
            AddToRegistry<EmployeeEdit, EmployeeEditWindow>();
            AddToRegistry<MeasureUnitList, MeasureUnitListWindow>();
            AddToRegistry<MeasureUnitEdit, MeasureUnitEditWindow>();
            AddToRegistry<DriverList, DriverListWindow>();
            AddToRegistry<DriverEdit, DriverEditWindow>();
            AddToRegistry<EquipmentList, EquipmentListWindow>();
            AddToRegistry<EquipmentEdit, EquipmentEditWindow>();
            AddToRegistry<AdditionalInfoList, AdditionalInfoListWindow>();
            AddToRegistry<AdditionalInfoEdit, AdditionalInfoEditWindow>();
            AddToRegistry<MachineList, MachineListWindow>();
            AddToRegistry<MachineEdit, MachineEditWindow>();
            AddToRegistry<ConstantEdit, ConstantEditWindow>();

            // ������
            AddToRegistry<RequestEdit, RequestEditDxWindow>();

            // �������
            AddToRegistry<DrawingList, DrawingListWindow>();
            AddToRegistry<DrawingEdit, DrawingEditWindow>();
            AddToRegistry<DrawingMeasurementEdit, DrawingMeasurementEditWindow>();
            AddToRegistry<MassCalculationEdit, MassCalculationEditWindow>();
            AddToRegistry<FlowsheetEdit, FlowsheetEditWindow>();
            AddToRegistry<FlowsheetProcessEdit, FlowsheetProcessEditWindow>();
            AddToRegistry<DrawingCalculationEdit, DrawingCalculationEditWindow>();

            // ������� ������
            AddToRegistry<DailyWorkPackageList, DailyWorkPackageListWindow>();
            AddToRegistry<DailyWorkPackageEdit, DailyWorkPackageEditWindow>();

            // �������
            // ������ ������� �����
            AddToRegistry<ShavingRecordList, ShavingRecordListWindow>();
            AddToRegistry<ShavingRecordEdit, ShavingRecordEditWindow>();
            // ������ ������� ���������
            AddToRegistry<MaterialArrivalRecordList, MaterialArrivalRecordListWindow>();
            AddToRegistry<MaterialArrivalRecordEdit, MaterialArrivalRecordEditWindow>();
            // ������ ������� ���������
            AddToRegistry<RollingRecordList, RollingRecordListWindow>();
            AddToRegistry<RollingRecordEdit, RollingRecordEditWindow>();
            // ������ ������������ �� ��������
            AddToRegistry<ShippingOrderRecordList, ShippingOrderRecordListWindow>();
            AddToRegistry<ShippingOrderRecordEdit, ShippingOrderRecordEditWindow>();

            // �����������
            AddToRegistry<ImageEdit, ImageEditWindow>();
        }

        private void AddToRegistry<TViewModel, TView>()
        {
            _registry.Add(typeof(TViewModel), typeof(TView));
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
            if (isSave)
                using (var fileDialog = new SaveFileDialog())
                {
                    fileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                    fileDialog.FileName = fileName;
                    fileDialog.Filter = filter;
                    var res = fileDialog.ShowDialog() == DialogResult.OK;
                    fileName = fileDialog.FileName;
                    return res;
                }
            else
                using (var fileDialog = new OpenFileDialog())
                {
                    fileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                    fileDialog.FileName = fileName;
                    fileDialog.Filter = filter;
                    var res = fileDialog.ShowDialog() == DialogResult.OK;
                    fileName = fileDialog.FileName;
                    return res;
                }
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
            if (viewModel is IClosable)
            {
                var closable = (IClosable) viewModel;
                window.Closing += (sender, args) => args.Cancel = !closable.CanClose();
                closable.Close = res =>
                {
                    //if ((res == null || res.Value) && (closable is IValidatable) &&
                    //    !((IValidatable)closable).Validate())
                    //    return;
                    if (!closable.CanClose())
                        return;
                    if (res != null)
                        window.DialogResult = res;
                    window.Close();
                };
            }
            return window;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            throw new NotImplementedException();
        }

        public Window MainWindow { get; set; }
    }
}