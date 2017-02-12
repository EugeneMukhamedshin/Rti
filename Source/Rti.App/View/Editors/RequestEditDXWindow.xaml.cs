using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;

namespace Rti.App.View.Editors
{
    /// <summary>
    /// Interaction logic for RequestEditDxWindow.xaml
    /// </summary>
    public partial class RequestEditDxWindow : DXWindow
    {
        public RequestEditDxWindow()
        {
            InitializeComponent();
        }

        private void GridControl_OnCustomUnboundColumnData(object sender, GridColumnDataEventArgs e)
        {
            if (Equals(e.Column, RowNumberColumn) && e.IsGetData)
            {
                e.Value = e.ListSourceRowIndex + 1;
            }
        }
    }
}
