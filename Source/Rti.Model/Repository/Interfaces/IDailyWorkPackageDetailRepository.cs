using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDailyWorkPackageDetailRepository
    {
        IList<DailyWorkPackageDetail> GetByDailyWorkPackageId(int dailyWorkPackageId);
    }
}