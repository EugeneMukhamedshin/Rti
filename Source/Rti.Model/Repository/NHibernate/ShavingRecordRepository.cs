using System;
using System.Collections.Generic;
using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ShavingRecordRepository
    {
        public IList<ShavingRecord> GetByInterval(DateTime startDate, DateTime endDate, int? shaverEmployeeId)
        {
            return
                ExecuteFuncOnQueryOver(
                    q =>
                    {
                        var result = q.WhereRestrictionOn(o => o.ShaveDate)
                            .IsBetween(startDate)
                            .And(endDate)
                            .And(o => !o.IsDeleted);
                        if (shaverEmployeeId.HasValue)
                            result = result.And(o => o.ShaverEmployee.Id == shaverEmployeeId);
                        return result.List();
                    });
        }

        public int GetNextSortOrder()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).Select(Projections.Max<ShavingRecord>(o => o.SortOrder)).SingleOrDefault<int>() + 1);
        }
    }
}