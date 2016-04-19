using System.IO;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class ImageEdit : EditViewModel<ImageDataViewModel>
    {
        private bool _isUploadCommandAvailable = true;
        public DelegateCommand UploadImageCommand { get; set; }

        public bool IsIsUploadCommandAvailable
        {
            get { return _isUploadCommandAvailable; }
            set
            {
                if (value == _isUploadCommandAvailable) return;
                _isUploadCommandAvailable = value;
                OnPropertyChanged();
            }
        }

        public ImageEdit(string name, byte[] imageData, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, new ImageDataViewModel {Data = imageData}, readOnly, viewService, repositoryFactory)
        {
            UploadImageCommand = new DelegateCommand(
                "Загрузить изображение",
                o => Editable && IsIsUploadCommandAvailable,
                o => UploadImage());
        }

        private void UploadImage()
        {
            string fileName = null;
            if (ViewService.ShowFileDialog(ref fileName, "Изображения (*.jpg)|*.jpg", false))
                Entity.Data = File.ReadAllBytes(fileName);
        }
    }

    public class ImageDataViewModel : BaseViewModel
        {
        private byte[] _data;

        public byte[] Data
        {
            get { return _data; }
            set
            {
                if (Equals(value, _data)) return;
                _data = value;
                OnPropertyChanged();
            }
        }
    }
}