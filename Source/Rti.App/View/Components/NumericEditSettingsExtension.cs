using System;
using System.Globalization;
using System.Windows.Markup;
using DevExpress.Xpf.Editors;
using DevExpress.Xpf.Editors.Settings;

namespace Rti.App.View.Components
{
    public class TextEditSettingsExtension : MarkupExtension
    {
        public string Mask { get; set; }

        public MaskType? MaskType { get; set; }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return new TextEditSettings
            {
                Mask = Mask,
                MaskCulture = CultureInfo.GetCultureInfo("ru-RU"),
                MaskType = MaskType ?? DevExpress.Xpf.Editors.MaskType.Numeric,
                MaskUseAsDisplayFormat = true,
            };
        }
    }
}