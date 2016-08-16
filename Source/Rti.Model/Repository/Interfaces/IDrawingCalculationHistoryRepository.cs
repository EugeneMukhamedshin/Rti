using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDrawingCalculationHistoryRepository
    {
        IList<DrawingCalculationHistory> GetByDrawingId(int drawingId);
    }
}