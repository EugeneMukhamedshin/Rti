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


namespace Rti.App.View.Editors
{
    /// <summary>
    /// Interaction logic for ShipmentEditWindow.xaml
    /// </summary>
    public partial class ShipmentEditWindow : DXWindow
    {
        public ShipmentEditWindow()
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
