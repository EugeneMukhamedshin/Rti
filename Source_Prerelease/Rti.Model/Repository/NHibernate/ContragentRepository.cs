using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ContragentRepository
    {
        public IList<Contragent> GetAllActive(int contragentType)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted && o.Type == contragentType).List());
        }
    }
}