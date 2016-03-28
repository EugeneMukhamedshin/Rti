using System;
using System.Globalization;
using System.Windows.Data;

namespace Rti.App.View.Editors
{
    public class StringToNumberConverter: IValueConverter
    {
        public bool IsNullable { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return value;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var val = value.ToString();
            if (string.IsNullOrEmpty(val) && IsNullable)
                return null;
            return System.Convert.ToDouble(value.ToString().Replace('.', ','));
        }
    }
}
