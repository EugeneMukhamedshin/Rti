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

        public IList<Payment> GetByPeriod(DateTime startDate, DateTime endDate, int? customerId)
        {
            return
                ExecuteFuncOnQueryOver(
                    q =>
                    {
                        Request request = null;
                        q = q.WhereRestrictionOn(o => o.PaymentDate).IsBetween(startDate).And(endDate);
                        if (customerId.HasValue)
                        {
                            q = q.JoinAlias(o => o.Request, () => request)
                                .Where(o => request.Customer.Id == customerId.Value);
                        }
                        return q.List();
                    });
        }
    }
}