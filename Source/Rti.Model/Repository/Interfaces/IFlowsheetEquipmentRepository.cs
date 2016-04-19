using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IFlowsheetEquipmentRepository : IRepository<Rti.Model.Domain.FlowsheetEquipment> {
        IList<FlowsheetEquipment> GetByFlowsheetId(int flowsheetId);
    }
}