using System.Windows;

namespace Rti.App.View.Lists.DragDropLogic
{
    public static class DataObjectExtension
    {
        public static T GetData<T>(this IDataObject data) where T : class
        {
            return data.GetData(typeof(T)) as T;
        }
    }
}
