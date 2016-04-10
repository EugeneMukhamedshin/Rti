using NHibernate.Criterion;

namespace Rti.Model.Repository.NHibernate
{
    public partial class RequestRepository
    {
        public int GetNewRequestNumber()
        {
            return ExecuteFuncOnQueryOver(q => q.Select(Projections.Max("Number")).SingleOrDefault<int>()) + 1;
        }
    }
}