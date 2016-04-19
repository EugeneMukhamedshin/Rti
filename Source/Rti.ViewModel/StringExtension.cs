using System.Linq;

namespace Rti.ViewModel
{
    public static class StringExtension
    {
        public static bool ContainedIn(this string text, params object[] args)
        {
            if (string.IsNullOrEmpty(text))
                return false;
            if (args == null || !args.Any())
                return false;
            var lowerText = text.ToLower();
            return args.Aggregate(false, (res, arg) => res || arg != null && arg.ToString().ToLower().Contains(lowerText));
        }

        public static bool In(this string text, params object[] args)
        {
            if (string.IsNullOrEmpty(text))
                return false;
            if (args == null || !args.Any())
                return false;
            if (args.Contains(text))
                return true;
            return false;
        }

    }
}
