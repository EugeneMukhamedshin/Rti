using DevExpress.Xpf.PropertyGrid;

namespace Rti.App.View.Editors
{
    /// <summary>
    /// Interaction logic for DrawingEditWindow.xaml
    /// </summary>
    public partial class DrawingEditWindow
    {
        public DrawingEditWindow()
        {
            InitializeComponent();
        }

        private void PropertyGridControl_OnHiddenEditor(object sender, PropertyGridEditorEventArgs args)
        {
        }
    }
}
