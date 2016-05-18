using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemRequestDetailRepository : IRepository<Rti.Model.Domain.WorkItemRequestDetail> {
        IList<WorkItemRequestDetail> GetByWorkItemId(int workItemId);
        IList<WorkItemRequestDetail> GetByRequestDetailId(int requestDetailId);
    }
}