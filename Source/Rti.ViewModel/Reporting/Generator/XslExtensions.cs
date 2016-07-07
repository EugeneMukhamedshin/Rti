using System;
using System.Globalization;
using System.Text;

namespace Rti.ViewModel.Reporting.Generator
{
    public class XslExtensions
    {
        private static StringBuilder GetDoubleRepresentation(decimal number)
        {
            var arrayInt = new int[4];
            var arrayString = new string[4, 3]
            {
                {"миллиард", "миллиарда", "миллиардов"},
                {"миллион", "миллиона", "миллионов"},
                {"тыс€ча", "тыс€чи", "тыс€ч"},
                {"", "", ""}
            };
            arrayInt[0] = (int) ((number - (number%1000000000))/1000000000);
            arrayInt[1] = (int) (((number%1000000000) - (number%1000000))/1000000);
            arrayInt[2] = (int) (((number%1000000) - (number%1000))/1000);
            arrayInt[3] = (int) (number%1000);
            var appendWithDelimeter = new Action<StringBuilder, string>((builder, s) =>
            {
                if (builder.Length == 0)
                    builder.Append(s);
                else
                    builder.AppendFormat(" {0}", s);
            });
            var result = new StringBuilder();
            for (int i = 0; i < 4; i++)
            {
                var part = arrayInt[i];
                if (part != 0)
                {
                    if (((part - (part%100))/100) != 0)
                        switch (((part - (part%100))/100))
                        {
                            case 1:
                                appendWithDelimeter(result, "сто");
                                break;
                            case 2:
                                appendWithDelimeter(result, "двести");
                                break;
                            case 3:
                                appendWithDelimeter(result, "триста");
                                break;
                            case 4:
                                appendWithDelimeter(result, "четыреста");
                                break;
                            case 5:
                                appendWithDelimeter(result, "п€тьсот");
                                break;
                            case 6:
                                appendWithDelimeter(result, "шестьсот");
                                break;
                            case 7:
                                appendWithDelimeter(result, "семьсот");
                                break;
                            case 8:
                                appendWithDelimeter(result, "восемьсот");
                                break;
                            case 9:
                                appendWithDelimeter(result, "дев€тьсот");
                                break;
                        }
                    if (((part%100) - ((part%100)%10))/10 != 1)
                    {
                        switch (((part%100) - ((part%100)%10))/10)
                        {
                            case 2:
                                appendWithDelimeter(result, "двадцать");
                                break;
                            case 3:
                                appendWithDelimeter(result, "тридцать");
                                break;
                            case 4:
                                appendWithDelimeter(result, "сорок");
                                break;
                            case 5:
                                appendWithDelimeter(result, "п€тьдес€т");
                                break;
                            case 6:
                                appendWithDelimeter(result, "шестьдес€т");
                                break;
                            case 7:
                                appendWithDelimeter(result, "семьдес€т");
                                break;
                            case 8:
                                appendWithDelimeter(result, "восемьдес€т");
                                break;
                            case 9:
                                appendWithDelimeter(result, "дев€носто");
                                break;
                        }
                        switch (part%10)
                        {
                            case 1:
                                if (i == 2) appendWithDelimeter(result, "одна");
                                else appendWithDelimeter(result, "один");
                                break;
                            case 2:
                                if (i == 2) appendWithDelimeter(result, "две");
                                else appendWithDelimeter(result, "два");
                                break;
                            case 3:
                                appendWithDelimeter(result, "три");
                                break;
                            case 4:
                                appendWithDelimeter(result, "четыре");
                                break;
                            case 5:
                                appendWithDelimeter(result, "п€ть");
                                break;
                            case 6:
                                appendWithDelimeter(result, "шесть");
                                break;
                            case 7:
                                appendWithDelimeter(result, "семь");
                                break;
                            case 8:
                                appendWithDelimeter(result, "восемь");
                                break;
                            case 9:
                                appendWithDelimeter(result, "дев€ть");
                                break;
                        }
                    }
                    else
                        switch (part%100)
                        {
                            case 10:
                                appendWithDelimeter(result, "дес€ть");
                                break;
                            case 11:
                                appendWithDelimeter(result, "одиннадцать");
                                break;
                            case 12:
                                appendWithDelimeter(result, "двенадцать");
                                break;
                            case 13:
                                appendWithDelimeter(result, "тринадцать");
                                break;
                            case 14:
                                appendWithDelimeter(result, "четырнадцать");
                                break;
                            case 15:
                                appendWithDelimeter(result, "п€тнадцать");
                                break;
                            case 16:
                                appendWithDelimeter(result, "шестнадцать");
                                break;
                            case 17:
                                appendWithDelimeter(result, "семнадцать");
                                break;
                            case 18:
                                appendWithDelimeter(result, "восемннадцать");
                                break;
                            case 19:
                                appendWithDelimeter(result, "дев€тнадцать");
                                break;
                        }
                    if (part%100 >= 10 && part%100 <= 19) appendWithDelimeter(result, arrayString[i, 2]);
                    else
                        switch (part%10)
                        {
                            case 1:
                                appendWithDelimeter(result, arrayString[i, 0]);
                                break;
                            case 2:
                            case 3:
                            case 4:
                                appendWithDelimeter(result, arrayString[i, 1]);
                                break;
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 0:
                                appendWithDelimeter(result, arrayString[i, 2]);
                                break;
                        }
                }
            }
            return result;
        }

        public static string GetRepresentation(decimal number)
        {
            var result = GetDoubleRepresentation(number);
            var res = string.Format("{0} руб. {1} коп.", result.Length == 0 ? "ноль" : result.ToString(), (int)((number - Math.Floor(number)) * 100));
            return res;
        }

        public static string GetCents(decimal price)
        {
            return ((int) ((price - Math.Floor(price))*100)).ToString();
        }

        public static string GetRepresentation1(decimal number)
        {
            var result = GetDoubleRepresentation(number);
            return result.Length == 0 ? "ноль" : result.ToString();
        }

        private static IFormatProvider GetFormatProvider(string culture)
        {
            return string.IsNullOrEmpty(culture) ? CultureInfo.GetCultureInfo("ru-RU") : CultureInfo.GetCultureInfo(culture);
        }

        public string FormatDateTime(string text, string format, string culture)
        {
            DateTime date;
            if (!DateTime.TryParse(text, GetFormatProvider(culture), DateTimeStyles.None, out date))
                return string.Empty;
            return date.ToString(format, GetFormatProvider(culture));
        }

        public string FormatDateTime(string text, string format)
        {
            return FormatDateTime(text, format, null);
        }

        public string FormatDateTime(string text)
        {
            return FormatDateTime(text, "G", null);
        }

        public string FormatDate(string text, string format, string culture)
        {
            DateTime date;
            if (!DateTime.TryParse(text, GetFormatProvider(culture), DateTimeStyles.None, out date))
                return null;
            return date.ToString(format, GetFormatProvider(culture));
        }

        public string FormatDate(string text, string format)
        {
            return FormatDate(text, format, null);
        }

        public string FormatDate(string text)
        {
            return FormatDate(text, "d", null);
        }

        public string GetCurrentDateTime(string format)
        {
            return DateTime.Now.ToString(format);
        }

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