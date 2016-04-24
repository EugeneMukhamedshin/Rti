using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class CalculationRepository
    {
        public Calculation GetByDrawingId(int drawingId, CalculationType calculationType)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId && o.CalculationTypeEnum == calculationType).SingleOrDefault());
        }
    }
}