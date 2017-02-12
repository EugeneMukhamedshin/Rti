using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;


namespace Rti.App.View.Lists
{
    /// <summary>
    /// Interaction logic for WorkItemListWindow.xaml
    /// </summary>
    public partial class WorkItemListWindow : DXWindow
    {
        public WorkItemListWindow()
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
