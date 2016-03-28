using System;
using System.Globalization;
using System.Windows;
using System.Windows.Data;

namespace Rti.App.View.Lists
{
    public class BooleanToCollapsedConverter: IValueConverter
    {
        public bool Inverted { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (Equals(value, true))
                return Inverted ? Visibility.Collapsed : Visibility.Visible;
            return Inverted ? Visibility.Visible : Visibility.Collapsed;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
