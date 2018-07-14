using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IAttachmentRepository
    {
        IList<Attachment> GetByDrawingId(int drawingId);
        byte[] GetData(int imageId);
        void SaveData(int imageId, byte[] data);
        Dictionary<int, int> GetCountByDrawingIds(IEnumerable<int> drawingIds);
    }
}