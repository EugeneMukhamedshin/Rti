using System;
using System.Linq;
using System.Windows.Markup;
using Rti.Model.Domain;

namespace Rti.App.View.Lists
{
    public class DetailTypeToItemsSource : MarkupExtension
    {
        public DetailTypeToItemsSource() { }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return Enum.GetValues(typeof(DetailType))
                .Cast<DetailType>()
                .Select(e => new { Value = e, DisplayName = GetDisplayName(e) });
        }

        private static string GetDisplayName(DetailType existance)
        {
            switch (existance)
            {
                case DetailType.MoldingRound1: return "Фк1";
                case DetailType.MoldingRound2: return "Фк2";
                case DetailType.MoldingRound3: return "Фк3";
                case DetailType.MoldingRound4: return "Фк4";
                case DetailType.MoldingSquare1: return "Фп1";
                case DetailType.MoldingSquare2: return "Фп2";
                case DetailType.MoldingSquare3: return "Фп3";
                case DetailType.LaserCutting: return "Вл";
                case DetailType.Other: return "Другой";
            }
            return null;
        }
    }
}