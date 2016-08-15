using System;
using System.Collections.Generic;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestRepository
    {
        int GetNewRequestNumber();
        Request GetByNumber(int number);
        IList<Request> GetUnshipped();
        IList<RequestsReportRow> GetRequestReport(DateTime startDate, DateTime endDate);
        IList<Request> GetUnpaid();
    }
}