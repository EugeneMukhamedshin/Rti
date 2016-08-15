using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IEquipmentPaymentRepository
    {
        IList<EquipmentPayment> GetByDrawingId(int id);
        IList<EquipmentPayment> GetByPeriod(DateTime startDate, DateTime endDate);
    }
}