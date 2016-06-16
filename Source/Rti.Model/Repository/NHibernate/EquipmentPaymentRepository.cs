using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class EquipmentPaymentRepository
    {
        public IList<EquipmentPayment> GetByDrawingId(int drawingId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Drawing.Id == drawingId).List());
        }

        public IList<EquipmentPayment> GetByPeriod(DateTime startDate, DateTime endDate)
        {
            return
                ExecuteFuncOnQueryOver(
                    q => q.WhereRestrictionOn(o => o.PaymentDate).IsBetween(startDate).And(endDate).List());
        }
    }
}