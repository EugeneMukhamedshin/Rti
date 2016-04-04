using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Rti.App.View.Lists
{
    public class MapTemplateSelector: DataTemplateSelector
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
}