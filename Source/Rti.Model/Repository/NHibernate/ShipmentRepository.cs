using System;
using System.Collections.Generic;
using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ShipmentRepository
    {
        public IList<Shipment> GetByPeriod(DateTime startDate, DateTime endDate)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).AndRestrictionOn(o => o.Date).IsBetween(startDate).And(endDate).List());
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