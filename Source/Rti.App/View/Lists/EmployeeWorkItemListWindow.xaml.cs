using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;

namespace Rti.App.View.Lists
{
    /// <summary>
    /// Interaction logic for EmployeeWorkItemListWindow.xaml
    /// </summary>
    public partial class EmployeeWorkItemListWindow : DXWindow
    {
        public EmployeeWorkItemListWindow()
        {
            InitializeComponent();
        }

        private void GridControl_OnCustomColumnDisplayText(object sender, CustomColumnDisplayTextEventArgs e)
        {
            if (Equals(e.Column, _rowNumberColumn))
                e.DisplayText = (e.ListSourceIndex + 1).ToString();
            if (Equals(e.Column, _machineColumn))
                e.DisplayText = ((ViewModel.Entities.WorkItemViewModel) e.Row).FlowsheetMachine.Machine.InvNumber;
        }
    }
}
