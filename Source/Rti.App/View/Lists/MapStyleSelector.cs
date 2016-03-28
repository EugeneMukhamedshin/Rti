using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Controls;

namespace Rti.App.View.Lists
{
    public class MapStyleSelector : StyleSelector
    {
        public Style DefaultStyle { get; set; }
        public List<StyleMap> StyleMaps { get; set; }

        public MapStyleSelector()
        {
            StyleMaps = new List<StyleMap>();
        }

        public override Style SelectStyle(object item, DependencyObject container)
        {
            if (item == null)
                return DefaultStyle;
            var templateMap = StyleMaps.FirstOrDefault(tm => tm.ObjectType == item.GetType());
            if (templateMap == null)
                return DefaultStyle;
            return templateMap.Style ?? base.SelectStyle(item, container);
        }
    }
}