using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class JobRepository
    {
        public IList<Job> GetAllActive()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List());
        }

        public Job GetByLogin(string login)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Login == login).SingleOrDefault());
        }
    }
}