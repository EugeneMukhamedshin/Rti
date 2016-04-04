using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class RequestDetailRepository
    {
        public IList<RequestDetail> GetByRequestId(int requestId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Request.Id == requestId).List());
        }
    }
}