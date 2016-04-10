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

        private void GridControl_OnCustomColumnDisplayText(object sender, CustomColumnDisplayTextEventArgs e)
        {
            if (Equals(e.Column, RowNumberColumn))
                e.DisplayText = (e.ListSourceIndex + 1).ToString();
        }
    }
}
