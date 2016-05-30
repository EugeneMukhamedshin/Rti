using System;
using System.IO;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Media.Imaging;

namespace Rti.App.View.Components
{
    public class ImageContentExtension: MarkupExtension
    {
        public string FileName { get; set; }

        public int Size { get; set; }

        public override object ProvideValue(IServiceProvider serviceProvider)
        {
            return new Image
            {
                Source =
                    new BitmapImage(
                        new Uri(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Content", "Images", FileName))),
                Height = Size,
                Width = Size
            };
        }
    }
}
