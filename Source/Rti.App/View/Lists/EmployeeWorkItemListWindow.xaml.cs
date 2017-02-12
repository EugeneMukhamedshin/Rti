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
            if (Equals(e.Column, _machineColumn))
            {
                var item = (ViewModel.Entities.WorkItemViewModel) e.Row;
                e.DisplayText = item.FlowsheetMachine == null ? null : item.FlowsheetMachine.Machine.InvNumber;
            }
        }

        private void GridControl_OnCustomUnboundColumnData(object sender, GridColumnDataEventArgs e)
        {
            if (Equals(e.Column, _rowNumberColumn) && e.IsGetData)
            {
                e.Value = e.ListSourceRowIndex + 1;
            }
        }
    }
}
