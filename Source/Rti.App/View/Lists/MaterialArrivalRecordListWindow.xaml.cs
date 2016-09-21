using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;

namespace Rti.App.View.Lists
{
    /// <summary>
    /// Interaction logic for MaterialArrivalRecordListWindow.xaml
    /// </summary>
    public partial class MaterialArrivalRecordListWindow : DXWindow
    {
        public MaterialArrivalRecordListWindow()
        {
            InitializeComponent();
        }

        private void GridControl_OnCustomColumnDisplayText(object sender, CustomColumnDisplayTextEventArgs e)
        {
            if (Equals(e.Column, RowNumberColumn))
                e.DisplayText = (e.ListSourceIndex + 1).ToString();
        }
    }
}
