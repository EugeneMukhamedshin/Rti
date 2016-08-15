using System;
using System.Globalization;
using System.Windows.Data;
using System.Windows.Media;
using DevExpress.Xpf.Data;
using DevExpress.Xpf.Grid;
using Rti.Model.Domain;

namespace Rti.App.View.Converters
{
    public class CalcTypeToBackgroundConverter : IValueConverter
    {
        public Brush FactCalculationBackground { get; set; }
        public Brush PlanCalculationBackground { get; set; }
        public Brush HistoryCalculationBackground { get; set; }

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            switch ((CalculationType)value)
            {
                case CalculationType.Fact:
                    return FactCalculationBackground;
                case CalculationType.Plan:
                    return PlanCalculationBackground;
                case CalculationType.History:
                    return HistoryCalculationBackground;
                default:
                    return null;
            }
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}