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


namespace Rti.App.View.Editors
{
    /// <summary>
    /// Interaction logic for DrawingMeasurementEditWindow.xaml
    /// </summary>
    public partial class DrawingMeasurementEditWindow : DXWindow
    {
        public DrawingMeasurementEditWindow()
        {
            InitializeComponent();
            Loaded += DrawingMeasurementEditWindow_Loaded;
        }

        void DrawingMeasurementEditWindow_Loaded(object sender, RoutedEventArgs e)
        {
        }
    }
}
