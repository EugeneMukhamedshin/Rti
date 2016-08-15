<<<<<<< HEAD
﻿using System.Collections.Generic;
=======
using System.Collections.Generic;
>>>>>>> origin/develop
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IReportOfCompletionItemRepository
    {
        IList<ReportOfCompletionItem> GetByRequestId(int id);
    }
}