using System;
using System.Globalization;
using System.Windows.Markup;
using DevExpress.Xpf.Editors;
using DevExpress.Xpf.Editors.Settings;

namespace Rti.App.View.Components
{
    public class Float2TextEditSettingsExtension : MarkupExtension
    {
        public Float2TextEditSettingsExtension() : base() { }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return new TextEditSettings
            {
                Mask = "f2",
                MaskCulture = CultureInfo.GetCultureInfo("ru-RU"),
                MaskType = MaskType.Numeric,
                MaskUseAsDisplayFormat = true,
            };
        }
    }
}
