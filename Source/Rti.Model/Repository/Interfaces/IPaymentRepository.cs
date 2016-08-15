using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IPaymentRepository : IRepository<Rti.Model.Domain.Payment>
    {
        IList<Payment> GetByRequestId(int requestId);
        IList<Payment> GetByPeriod(DateTime startDate, DateTime endDate);
    }
}