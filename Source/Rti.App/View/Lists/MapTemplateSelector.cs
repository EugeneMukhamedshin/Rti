using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using DevExpress.Xpf.Grid;
using Rti.Model.Domain.ReportEntities;

namespace Rti.App.View.Lists
{
    public class MapTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DefaultTemplate { get; set; }
        public List<TemplateMap> TemplateMaps { get; set; }

        public MapTemplateSelector()
        {
            TemplateMaps = new List<TemplateMap>();
        }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            if (item == null)
                return DefaultTemplate;
            var templateMap = TemplateMaps.FirstOrDefault(tm => tm.ObjectType == item.GetType());
            if (templateMap == null)
                return DefaultTemplate;
            return templateMap.Template ?? base.SelectTemplate(item, container);
        }
    }

    public class RequestStatusTemplateSelector : DataTemplateSelector
    {
        public DataTemplate DefaultTemplate { get; set; }

        public DataTemplate GreenTemplate { get; set; }
        public DataTemplate YellowTemplate { get; set; }
        public DataTemplate RedTemplate { get; set; }
        public DataTemplate Red1Template { get; set; }
        public DataTemplate GrayTemplate { get; set; }

        public RequestStatusTemplateSelector()
        {
        }

        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            var data = item as EditGridCellData;
            if (data == null)
                return DefaultTemplate;
            var row = data.RowData.Row as RequestsReportRow;
            if (row == null)
                return DefaultTemplate;
            switch (row.Status)
            {
                case RequestStatus.WorkNotStarted: return GrayTemplate;
                case RequestStatus.WorkStartedEarly: return GreenTemplate;
                case RequestStatus.WorkStartedTardily: return RedTemplate;
                case RequestStatus.ShipmentDateIsPast: return Red1Template;
                case RequestStatus.WorkStartedJustInTime: return YellowTemplate;
                case RequestStatus.Shipped: return DefaultTemplate;
                default: return DefaultTemplate;
            }
        }
    }

}