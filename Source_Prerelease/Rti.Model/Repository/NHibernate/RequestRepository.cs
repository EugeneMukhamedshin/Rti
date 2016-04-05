using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class RequestRepository
    {
        public int GetNewRequestNumber()
        {
            return ExecuteFuncOnQueryOver(q => q.Select(Projections.Max("Number")).SingleOrDefault<int>()) + 1;
        }

        public Request GetByNumber(int number)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Number == number).SingleOrDefault());
        }
    }
}