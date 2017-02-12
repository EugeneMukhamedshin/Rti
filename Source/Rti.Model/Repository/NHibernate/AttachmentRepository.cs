using System.Collections.Generic;
using System.Threading;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class AttachmentRepository
    {
        public IList<Attachment> GetByDrawingId(int drawingId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId).List());
        }

        public byte[] GetData(int id)
        {
            var result = ExecuteFuncOnSession(
                session =>
                    session.CreateSQLQuery("select data from attachments where id = ?")
                        .SetParameter(0, id)
                        .UniqueResult(),
                $"Получение изображения Id = {id}");
            return (byte[]) result;
        }

        public void SaveData(int id, byte[] data)
        {
            ExecuteActionOnSession(
                session =>
                    session.CreateSQLQuery(
                        "update attachments set data = ? where id = ?")
                        .SetParameter(0, data)
                        .SetParameter(1, id)
                        .ExecuteUpdate(),
                $"Сохрание изображения Id = {id}");
        }
    }
}