using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Windows.Controls;
using System.Windows.Data;
using Rti.ViewModel.Entities.Commands;

namespace Rti.App.View.Lists
{
    public class CommandsToContextMenuConverter: IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            var commands = value as IEnumerable<DelegateCommand>;
            if (commands == null)
                return null;
            var contextMenu = new ContextMenu
            {
                ItemsSource = commands.Select(command =>
                {
                    var menuItem = new MenuItem {Command = command, Header = command.Name};
                    return menuItem;
                }).ToList()
            };
            return contextMenu;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
