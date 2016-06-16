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
        private void GridControl_OnCustomColumnDisplayText(object sender, CustomColumnDisplayTextEventArgs e)
        {
            if (Equals(e.Column, _rowNumberColumn))
                e.DisplayText = (e.ListSourceIndex + 1).ToString();
        }

    }
}
