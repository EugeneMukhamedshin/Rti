using System;
using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemRequestDetailRepository : IRepository<Rti.Model.Domain.WorkItemRequestDetail> {
        IList<WorkItemRequestDetail> GetByWorkItemId(int workItemId);
        IList<WorkItemRequestDetail> GetByRequestDetailId(int requestDetailId);
        void DeleteByWorkItemId(int workItemId);
        void DeleteByRequestDetailId(int requestDetailId, DateTime forDate);
        IList<RejectionReportRow> GetRejectionReport(DateTime startDate, DateTime endDate, int? employeeId);
    }
}