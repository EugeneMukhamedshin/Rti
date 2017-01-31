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
using DevExpress.Data;
using DevExpress.Xpf.Core;
using DevExpress.Xpf.Grid;
using Rti.Model.Domain.ReportEntities;
using Rti.ViewModel.Entities;


namespace Rti.App.View.Lists
{
    /// <summary>
    /// Interaction logic for RequestListWindow.xaml
    /// </summary>
    public partial class RequestListWindow : DXWindow
    {
        public RequestListWindow()
        {
            InitializeComponent();
        }

        private void GridControl_OnCustomSummary(object sender, CustomSummaryEventArgs e)
        {
            if (((GridSummaryItem)e.Item).FieldName != "Sum")
                return;
            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                var row = e.Row as RequestsReportRow;
                if (row == null)
                    return;
                if (row.IsWorkStarted)
                {
                    var total = (decimal)(e.TotalValue ?? (decimal)0);
                    total += row.Sum ?? 0;
                    e.TotalValue = total;
                }
            }
        }
    }
}
