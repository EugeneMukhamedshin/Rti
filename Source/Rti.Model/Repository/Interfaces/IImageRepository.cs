namespace Rti.Model.Repository.Interfaces
{
    public partial interface IImageRepository
    {
        byte[] GetData(int imageId);
        void SaveData(int imageId, byte[] data);
    }
}