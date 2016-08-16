using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDrawingFlowsheetMachineRepository
    {
        IList<DrawingFlowsheetMachine> GetByDrawingId(int drawingId);
        IList<DrawingFlowsheetMachine> GetByDrawingIds(int[] drawingIds);
    }
}