using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class FlowsheetProcessRepository
    {
        public IList<FlowsheetProcess> GetByFlowsheetId(int flowsheetId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Flowsheet.Id == flowsheetId).List());
        }
    }
}