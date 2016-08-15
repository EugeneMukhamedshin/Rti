using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemRepository
    {
        IList<WorkItem> GetByDate(DateTime date);
        IList<WorkItem> GetByEmployeeId(int employeeId, DateTime date);
        IList<WorkItem> GetByDrawingId(int drawingId, DateTime startDate, DateTime? endDate = null);
        IList<Tuple<int, int>> GetNotShippedByDrawingId(int drawingId, DateTime date, int sortOrder);
        IList<WorkItem> GetWorkItemsByIds(int[] ids);
    }
}