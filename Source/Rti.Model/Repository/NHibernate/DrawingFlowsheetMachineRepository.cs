using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class DrawingFlowsheetMachineRepository
    {
        public IList<DrawingFlowsheetMachine> GetByDrawingId(int drawingId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId).List());
        }

        public IList<DrawingFlowsheetMachine> GetByDrawingIds(int[] drawingIds)
        {
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Drawing.Id).IsIn(drawingIds).List());
        }
    }
}