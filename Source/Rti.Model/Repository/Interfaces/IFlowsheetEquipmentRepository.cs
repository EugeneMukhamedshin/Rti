using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IFlowsheetMachineRepository : IRepository<Rti.Model.Domain.FlowsheetMachine> {
        IList<FlowsheetMachine> GetByFlowsheetId(int flowsheetId);
        IList<FlowsheetMachine> GetByDrawingIds(int[] drawingIds);
    }
}