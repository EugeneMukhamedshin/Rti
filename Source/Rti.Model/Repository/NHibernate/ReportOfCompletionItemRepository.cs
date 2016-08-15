using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ReportOfCompletionItemRepository
    {
        public IList<ReportOfCompletionItem> GetByRequestId(int requestId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Request.Id == requestId).List());
        }
    }
}