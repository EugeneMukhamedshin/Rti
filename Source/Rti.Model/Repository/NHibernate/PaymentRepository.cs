<<<<<<< HEAD
﻿using System;
=======
using System;
>>>>>>> origin/develop
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class PaymentRepository
    {
        public IList<Payment> GetByRequestId(int requestId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Request.Id == requestId).List());
        }

        public IList<Payment> GetByPeriod(DateTime startDate, DateTime endDate)
        {
            return
                ExecuteFuncOnQueryOver(
                    q => q.WhereRestrictionOn(o => o.PaymentDate).IsBetween(startDate).And(endDate).List());
        }
    }
}