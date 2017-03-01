using System;
using System.Collections.Generic;
using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ShipmentRepository
    {
        public IList<Shipment> GetByPeriod(DateTime startDate, DateTime endDate, int? customerId, int? drawingId)
        {
            return
                ExecuteFuncOnSession(
                    session =>
                    {
                        Shipment s = null;
                        var q = session
                            .QueryOver(() => s)
                            .Where(() => !s.IsDeleted)
                            .AndRestrictionOn(() => s.Date)
                            .IsBetween(startDate)
                            .And(endDate);
                        if (customerId.HasValue)
                            q = q.Where(() => s.Recipient.Id == customerId.Value);
                        if (drawingId.HasValue)
                        {
                            RequestDetail rd = null;
                            return
                                q.JoinQueryOver<ShipmentItem>(o => o.ShipmentItems)
                                .JoinAlias(o => o.RequestDetail, () => rd)
                                    .Where(() => rd.Drawing.Id == drawingId.Value).List();
                        }
                        return q.List();
                    });
        }

        public int GetNextSortOrder()
        {
            var maxSortOrder = ExecuteFuncOnQueryOver(q => q.Where(o => o.Date >= new DateTime(DateTime.Today.Year, 1, 1)).Select(Projections.Max<Shipment>(o => o.SortOrder)).SingleOrDefault<int?>());
            return maxSortOrder + 1 ?? 1;
        }

        public IList<Shipment> GetByPaymentIds(int[] paymentIds)
        {
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Payment.Id).IsIn(paymentIds).List());
        }
    }
}