using System.ComponentModel;
using DevExpress.Xpf.PropertyGrid;

namespace Rti.App.View.Components
{
    public class PropertyGridResponsible: PropertyGridControl
    {
        protected override void OnSelectedObjectChanged(object oldValue, object newValue)
        {
            base.OnSelectedObjectChanged(oldValue, newValue);
            var notifier = newValue as INotifyPropertyChanged;
            if (notifier != null)
                notifier.PropertyChanged += (sender, args) => InvalidateData();
        }
    }
}
