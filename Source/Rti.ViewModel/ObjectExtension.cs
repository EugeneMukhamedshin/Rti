<<<<<<< HEAD
﻿using System;
=======
using System;
>>>>>>> origin/develop
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;

namespace Rti.ViewModel
{
    public static class ObjectExtension
    {
        public static object GetPropertyValue(this object obj, List<string> parts)
        {
            var prop = obj.GetType().GetProperties().FirstOrDefault(o => o.Name == parts.FirstOrDefault());
            if (prop == null)
                return null;
            var value = prop.GetValue(obj);
            if (parts.Count() == 1)
                return value;
            return GetPropertyValue(value, parts.Skip(1).ToList());
        }

        public static T AsReleasable<T>(this T obj, Action<T> releaseAction = null) where T : class
        {
            ReleasableObjectContext.AddDisposable(new ReleasableObject<T>(obj, releaseAction));
            return obj;
        }

        #region XConversion

        public static XAttribute XAttr(this object value, string name)
        {
            return new XAttribute(name, value == null ? string.Empty : value.ToString());
        }

        public static TResult GetVal<TObj, TResult>(this TObj obj, Func<TObj, TResult> getVal)
        {
            return obj == null ? default(TResult) : getVal(obj);
        }

        #endregion
    }

    public static class DoubleExtension
    {
        public static decimal ToDecimal(this double value)
        {
            return Convert.ToDecimal(value);
        }
    }
}