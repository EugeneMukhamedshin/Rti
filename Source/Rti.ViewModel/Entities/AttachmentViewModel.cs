using System.IO;
using System.Windows.Media.Imaging;

namespace Rti.ViewModel.Entities
{
    public partial class  AttachmentViewModel
    {
        private BitmapImage _image;

        private bool _isDataLoaded;

        public BitmapImage Image
        {
            get
            {
                if (_image != null) return _image;
                if (Data == null || Data.Length == 0)
                {
                    if (!_isDataLoaded)
                        LoadData();
                    return null;
                }
                _image = new BitmapImage();
                var ms = new MemoryStream(Data);
                _image.BeginInit();
                _image.StreamSource = ms;
                _image.EndInit();
                return _image;
            }
        }

        private void LoadData()
        {
            DoAsync(() => RepositoryFactory.GetAttachmentRepository().GetData(Id),
                res =>
                {
                    Data = res;
                    _isDataLoaded = true;
                    OnPropertyChanged("Image");
                });
        }
    }
}