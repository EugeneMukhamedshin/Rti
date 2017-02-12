using DevExpress.Xpf.Grid;

namespace Rti.App.View.Lists
{
    /// <summary>
    /// Interaction logic for EquipmentPaymentListWindow.xaml
    /// </summary>
    public partial class EquipmentPaymentListWindow
    {
        public EquipmentPaymentListWindow()
        {
            InitializeComponent();
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
