using System;
using System.Globalization;
using System.Windows.Markup;
using DevExpress.Xpf.Editors;
using DevExpress.Xpf.Editors.Settings;

namespace Rti.App.View.Components
{
    public class Float3TextEditSettings : MarkupExtension
    {
        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return new TextEditSettings
            {
                Mask = "f3",
                MaskCulture = CultureInfo.GetCultureInfo("ru-RU"),
                MaskType = MaskType.Numeric,
                MaskUseAsDisplayFormat = true,
            };
        }
    }
}