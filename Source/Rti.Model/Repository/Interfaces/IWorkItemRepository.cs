using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemRepository : IRepository<Rti.Model.Domain.WorkItem> {
        IList<WorkItem> GetByDate(DateTime date);
        IList<WorkItem> GetByEmployeeId(int employeeId, DateTime date);
        IList<WorkItem> GetByDrawingId(int drawingId, DateTime startDate, DateTime? endDate = null);
    }
}