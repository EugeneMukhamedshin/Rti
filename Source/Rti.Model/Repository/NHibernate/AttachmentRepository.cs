using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using NHibernate.Linq;
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

        public Dictionary<int, int> GetCountByDrawingIds(IEnumerable<int> drawingIds)
        {
            var ids = drawingIds.Aggregate(string.Empty,
                (res, id) => string.Format("{0}{1}{2}", res, res == string.Empty ? string.Empty : ",", id));
            if (ids == string.Empty)
                return new Dictionary<int, int>();return ExecuteFuncOnSession(s =>
                s.CreateSQLQuery(
                    $"select drawing_id, count(id) from attachments where drawing_id in ({ids}) group by drawing_id")
                        .SetResultTransformer(
                            new ResultTransformer(
                                fields => new Tuple<int, int>(Convert.ToInt32(fields[0]), Convert.ToInt32(fields[1])),
                                objects => objects.Cast<Tuple<int, int>>().ToList()))
                        .List<Tuple<int, int>>().ToDictionary(o => o.Item1, o => o.Item2), "");
        }
    }
}