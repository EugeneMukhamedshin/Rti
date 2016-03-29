using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ConstantRepository : NHibernateRepository<Constant>, IConstantRepository
    {
        public Constant GetActual()
        {
            return ExecuteFuncOnQueryOver(q => q.SingleOrDefault());
        }
    }
}