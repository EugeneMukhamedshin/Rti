using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class DrawingFlowsheetProcessRepository : NHibernateRepository<DrawingFlowsheetProcess>
    {
        public IList<DrawingFlowsheetProcess> GetByDrawingId(int drawingId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId).List());
        }
    }
}