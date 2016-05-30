using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;

namespace Rti.App.View.Helpers
{
    public static class EnumHelper
    {
        public static IList<object> GetValues(Type enumType)
        {
            var enumValues = new List<object>();

            foreach (FieldInfo fi in enumType.GetFields(BindingFlags.Static | BindingFlags.Public))
            {
                enumValues.Add(Enum.Parse(enumType, fi.Name, false));
            }
            return enumValues;
        }

        public static object Parse(string value, Type enumType)
        {
            return Enum.Parse(enumType, value, true);
        }

        public static IList<string> GetNames(Type enumType)
        {
            return enumType.GetFields(BindingFlags.Static | BindingFlags.Public).Select(fi => fi.Name).ToList();
        }

        public static IList<string> GetDisplayValues(Type enumType)
        {
            return GetNames(enumType).Select(obj => GetDisplayValue(Parse(obj, enumType))).ToList();
        }

        public static string GetDisplayValue(object value)
        {
            var fieldInfo = value.GetType().GetField(value.ToString());

            var descriptionAttributes = fieldInfo.GetCustomAttributes(
                typeof(DisplayAttribute), false) as DisplayAttribute[];

            if (descriptionAttributes == null) return string.Empty;
            return (descriptionAttributes.Length > 0) ? descriptionAttributes[0].Name : value.ToString();
        }
    }
}