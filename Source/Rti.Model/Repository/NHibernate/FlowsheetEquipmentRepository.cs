using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class FlowsheetMachineRepository
    {
        public IList<FlowsheetMachine> GetByFlowsheetId(int flowsheetId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Flowsheet.Id == flowsheetId).List());
        }

        public IList<FlowsheetMachine> GetByDrawingIds(int[] drawingIds)
        {
            return null;
        }
    }
}