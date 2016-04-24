using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface ICalculationRepository
    {
        Calculation GetByDrawingId(int drawingId, CalculationType calculationType);
    }
}