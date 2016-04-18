using NHibernate;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ImageRepository : NHibernateRepository<Rti.Model.Domain.Image>, IImageRepository
    {
        public byte[] GetData(int imageId)
        {
            var result = ExecuteFuncOnSession(
                session =>
                    session.CreateSQLQuery("select data from images where id = ?")
                        .SetParameter(0, imageId)
                        .UniqueResult(),
                string.Format("Получение изображения Id = {0}", imageId));
            return result == null ? null : (byte[])((object[])result)[0];
        }

        public void SaveData(int imageId, byte[] data)
        {
            ExecuteActionOnSession(
                session =>
                    session.CreateSQLQuery(
                        "update images set data = ? where id = ?")
                        .SetParameter(0, data)
                        .SetParameter(1, imageId)
                        .ExecuteUpdate(),
                        string.Format("Сохрание изображения Id = {0}", imageId));
        }
    }
}