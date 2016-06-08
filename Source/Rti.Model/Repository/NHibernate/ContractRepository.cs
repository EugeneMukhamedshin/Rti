using System;
using NHibernate.Criterion;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ContractRepository
    {
        public int GetNextNumber(DateTime regDate)
        {
            return
                ExecuteFuncOnQueryOver(
                    q => q.Where(o => o.Date == regDate).Select(Projections.Max("Number")).SingleOrDefault<int>() + 1);
        }
    }
}