using System;
using System.Globalization;
using System.Windows.Data;
using Rti.App.View.Helpers;

namespace Rti.App.View.Converters
{
    public class EnumToStringConverter: IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return EnumHelper.GetDisplayValue(value);
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
