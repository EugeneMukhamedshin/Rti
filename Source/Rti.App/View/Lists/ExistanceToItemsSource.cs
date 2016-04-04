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
                    return "В наличии";
                case Existance.NotExist:
                    return "Отсутствует";
                case Existance.InMaintenance:
                    return "В ремонте";
                case Existance.Lost:
                    return "Утеряна";
                case Existance.InProduction:
                    return "Изготовление";
            }
            return null;
        }
    }
}