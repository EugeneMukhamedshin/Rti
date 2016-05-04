using System.Collections.Generic;
using NHibernate;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class DailyWorkPackageDetailRepository
    {
        public IList<DailyWorkPackageDetail> GetByDailyWorkPackageId(int dailyWorkPackageId)
        {
            return
                ExecuteFuncOnQueryOver(
                    q => q.Where(o => o.DailyWorkPackage.Id == dailyWorkPackageId).OrderBy(o => o.SortOrder).Asc.List());
        }
    }
}