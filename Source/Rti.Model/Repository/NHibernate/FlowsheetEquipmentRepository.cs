using System;
using System.Collections.Generic;
using NHibernate;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class FlowsheetEquipmentRepository
    {
        public IList<FlowsheetEquipment> GetByFlowsheetId(int flowsheetId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Flowsheet.Id == flowsheetId).List());
        }
    }
}