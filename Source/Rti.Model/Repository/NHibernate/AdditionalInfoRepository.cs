using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class AdditionalInfoRepository : NHibernateRepository<AdditionalInfo>, IAdditionalInfoRepository
    {
        public IList<AdditionalInfo> GetAllActive()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List());
        }
    }
}