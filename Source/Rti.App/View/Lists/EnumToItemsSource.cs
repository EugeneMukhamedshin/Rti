using System;
using System.Linq;
using System.Windows.Markup;
using Rti.App.View.Helpers;

namespace Rti.App.View.Lists
{
    // ReSharper disable once EmptyConstructor
    public class EnumToItemsSource : MarkupExtension
    {
        public Type EnumType
        {
            get { return _enumType; }
            set
            {
                if (!value.IsEnum)
                    throw new InvalidOperationException("Тип должен быть enum");
                _enumType = value;
            }
        }

        private Type _enumType;

        public EnumToItemsSource()
        {

        }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return Enum.GetValues(EnumType)
                .Cast<Enum>()
                .Select(e => new { Value = e, DisplayName = GetDisplayName(e) });
        }

        private static string GetDisplayName(Enum value)
        {
            return EnumHelper.GetDisplayValue(value);
        }
    }
}
