using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class DetailRepository
    {
        public IList<Detail> GetAllActive()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(m => !m.IsDeleted).List());
        }
    }
}