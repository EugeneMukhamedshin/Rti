using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IReportOfCompletionItemRepository
    {
        IList<ReportOfCompletionItem> GetByRequestId(int id);
    }
}