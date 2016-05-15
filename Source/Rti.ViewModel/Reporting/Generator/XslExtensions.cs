namespace Rti.ViewModel.Reporting.Generator
{
    public class XslExtensions
    {
        //private static IFormatProvider GetFormatProvider(string culture)
        //{
        //    return string.IsNullOrEmpty(culture) ? CustomCulture.Instance : CultureInfo.GetCultureInfo(culture);
        //}

        //public string FormatDateTime(string text, string format, string culture)
        //{
        //    VTDateTime vtDate = new VTDateTime();
        //    vtDate.ParseDB(text);
        //    return vtDate.IsNull ? string.Empty : vtDate.ToString(format, GetFormatProvider(culture));
        //}

        //public string FormatDateTime(string text, string format)
        //{
        //    return FormatDateTime(text, format, null);
        //}

        //public string FormatDateTime(string text)
        //{
        //    return FormatDateTime(text, "G", null);
        //}

        //public string FormatDate(string text, string format, string culture)
        //{
        //    VTDate vtDate = new VTDate();
        //    vtDate.ParseDB(text);
        //    return vtDate.IsNull ? string.Empty : vtDate.ToString(format, GetFormatProvider(culture));
        //}

        //public string FormatDate(string text, string format)
        //{
        //    return FormatDate(text, format, null);
        //}

        //public string FormatDate(string text)
        //{
        //    return FormatDate(text, "d", null);
        //}

        //public string FormatDecimal(string text, string format, string culture)
        //{
        //    VTDecimal vtDecimal = new VTDecimal();
        //    vtDecimal.ParseDB(text);
        //    return vtDecimal.IsNull ? string.Empty : vtDecimal.ToString(format, GetFormatProvider(culture));
        //}

        //public string FormatDecimal(string text, string format)
        //{
        //    return FormatDecimal(text, format, null);
        //}

        //public string FormatAmount(string text, string culture)
        //{
        //    return FormatDecimal(text, "N2", culture);
        //}

        //public string FormatAmount(string text)
        //{
        //    return FormatDecimal(text, "N2");
        //}

        //public string FormatPercent(string text, string culture)
        //{
        //    return FormatDecimal(text, "###########0.####%", culture);
        //}

        //public string FormatPercent(string text)
        //{
        //    return FormatDecimal(text, "###########0.####%");
        //}

        //public string Space(int count)
        //{
        //    return new string(' ', count);
        //}

        //public string CreateString(string value, int count)
        //{
        //    StringBuilder sb = new StringBuilder();
        //    for (int i = 0; i < count; i++)
        //        sb.Append(value);
        //    return sb.ToString();
        //}

        //public string GetLine(string input, int lineLength, int lineNumber)
        //{
        //    string[] lines = StringHelper.BreakStringIntoLines(input, lineLength).Split(new[] { Environment.NewLine }, StringSplitOptions.None);
        //    return lineNumber >= 0 && lineNumber < lines.Length ? (lines[lineNumber] ?? string.Empty) : string.Empty;
        //}

        //public string GetEnumValueName(int enumValue, string assemblyQualifiedTypeName)
        //{
        //    string result = enumValue.ToString();

        //    try
        //    {
        //        Type enumType = Type.GetType(assemblyQualifiedTypeName);

        //        if (enumType != null)
        //            result = TypeDescriptor.GetConverter(enumType).ConvertToString(enumValue);
        //    }
        //    catch { }

        //    return result;
        //}

        //public string SplitLines(string delimeter, string text)
        //{
        //    return text.Replace(delimeter, new string(' ', 50));
        //}
    }
}