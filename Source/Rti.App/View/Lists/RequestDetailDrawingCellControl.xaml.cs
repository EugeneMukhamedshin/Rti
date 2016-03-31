using System.Windows.Controls;
using Rti.ViewModel;
using Rti.ViewModel.Entities;

namespace Rti.App.View.Lists
{
    /// <summary>
    /// Логика взаимодействия для RequestDetailDrawingCellControl.xaml
    /// </summary>
    public partial class RequestDetailDrawingCellControl : UserControl
    {
        public RequestDetailDrawingCellControl()
        {
            InitializeComponent();
            _autoCompleteBox.ItemFilter = ItemFilter;
            _autoCompleteBox.Focus();
        }

        private bool ItemFilter(string search, object item)
        {
            var drawing = item as DrawingViewModel;
            if (drawing == null)
                return false;
            return search.ContainedIn(drawing.Name);
        }
    }
}
