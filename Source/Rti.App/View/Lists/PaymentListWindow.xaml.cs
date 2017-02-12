using System.Collections;
using System.Collections.Generic;
using DevExpress.Xpf.Grid;
using Rti.ViewModel.Entities;

namespace Rti.App.View.Lists
{
    /// <summary>
    /// Interaction logic for PaymentListWindow.xaml
    /// </summary>
    public partial class PaymentListWindow
    {
        public PaymentListWindow()
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
