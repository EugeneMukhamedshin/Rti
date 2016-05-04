using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDailyWorkPackageRepository : IRepository<Rti.Model.Domain.DailyWorkPackage> {
        IList<DailyWorkPackage> GetPage(int page, int pageSize);
        int GetNextSortOrder();
    }
}