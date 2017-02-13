using System;
using System.Collections.Generic;
using NHibernate.Criterion;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class MaterialArrivalRecordRepository
    {
        public IList<MaterialArrivalRecord> GetByInterval(DateTime startDate, DateTime endDate, int?supplierId, int? materialId)
        {
            return
                ExecuteFuncOnQueryOver(
                    q =>
                    {
                        var result = q.WhereRestrictionOn(o => o.WaybillDate)
                            .IsBetween(startDate)
                            .And(endDate)
                            .And(o => !o.IsDeleted);
                        if (materialId.HasValue)
                            result = result.And(o => o.Material.Id == materialId);
                        if (supplierId.HasValue)
                            result = result.And(o => o.Supplier.Id == supplierId);
                        return result.List();
                    });
        }

        public int GetNextSortOrder()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).Select(Projections.Max<MaterialArrivalRecord>(o => o.SortOrder)).SingleOrDefault<int>() + 1);
        }
    }
}