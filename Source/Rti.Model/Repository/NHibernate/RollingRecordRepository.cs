using System;
using System.Collections.Generic;
using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class RollingRecordRepository
    {
        public IList<RollingRecord> GetByInterval(DateTime startDate, DateTime endDate, int? customerId)
        {
            return
                ExecuteFuncOnQueryOver(
                    q =>
                    {
                        var result = q.WhereRestrictionOn(o => o.RollingDate)
                            .IsBetween(startDate)
                            .And(endDate)
                            .And(o => !o.IsDeleted);
                        if (customerId.HasValue)
                            result = result.And(o => o.Customer.Id == customerId);
                        return result.List();
                    });
        }

        public int GetNextSortOrder()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).Select(Projections.Max<RollingRecord>(o => o.SortOrder)).SingleOrDefault<int>() + 1);
        }
    }
}