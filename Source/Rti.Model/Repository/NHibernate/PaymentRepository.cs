using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class PaymentRepository
    {
        public IList<Payment> GetByRequestId(int requestId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Request.Id == requestId).List());
        }
    }
}