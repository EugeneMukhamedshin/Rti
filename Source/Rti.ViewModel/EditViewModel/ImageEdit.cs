using System.IO;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class ImageEdit : EditEntityViewModel<ImageViewModel, Image>
    {
        private int _entityId;
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

        public ImageEdit(string name, ImageViewModel entity, int entityId, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            _entityId = entityId;
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

        public override void Refresh()
        {
            base.Refresh();
            if (Entity.Data == null)
                Entity.Data = RepositoryFactory.GetImageRepository().GetData(_entityId);
        }

        protected override void DoInternalSave()
        {
            base.DoInternalSave();
            if (Entity.IsNewEntity)
            {
                Entity.SaveEntity();
                _entityId = Entity.Id;
            }
            RepositoryFactory.GetImageRepository().SaveData(_entityId, Entity.Data);
        }
    }
}