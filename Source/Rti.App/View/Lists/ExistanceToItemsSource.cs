using System;
using System.Linq;
using System.Windows.Markup;
using Rti.Model.Domain;

namespace Rti.App.View.Lists
{
    public class ExistanceToItemsSource : MarkupExtension
    {
        public ExistanceToItemsSource() { }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return Enum.GetValues(typeof(Existance))
                .Cast<Existance>()
                .Select(e => new { Value = e, DisplayName = GetDisplayName(e) });
        }

        private string GetDisplayName(Existance existance)
        {
            switch (existance)
            {
                case Existance.Exist:
                    return "� �������";
                case Existance.NotExist:
                    return "�����������";
                case Existance.InMaintenance:
                    return "� �������";
                case Existance.Lost:
                    return "�������";
                case Existance.InProduction:
                    return "������������";
            }
            return null;
        }
    }
}