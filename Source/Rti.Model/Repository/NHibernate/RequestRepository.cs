using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate.Criterion;
using NHibernate.Linq;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;

namespace Rti.Model.Repository.NHibernate
{
    public partial class RequestRepository
    {
        public int GetNewRequestNumber()
        {
            return ExecuteFuncOnQueryOver(q => q.Select(Projections.Max("Number")).SingleOrDefault<int>()) + 1;
        }

        public Request GetByNumber(int number)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.Number == number).SingleOrDefault());
        }

        public IList<Request> GetUnshipped()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List());
        }

        public IList<RequestsReportRow> GetRequestReport()
        {
            return ExecuteFuncOnSession(s =>
                s.CreateSQLQuery(@"
SELECT
  r.id,
  r.number,
  r.reg_date,
  r.lead_time,
  r.ship_date,
  p.last_payment_date,
  si.last_shipment_date,
  DATEDIFF(r.ship_date, ifnull(r.work_start_date, r.reg_date)) diff,
  MAX(rd.equipment_lead_time) equipment_lead_time,
  r.work_start_date
FROM requests r
  INNER JOIN request_details rd
    ON r.id = rd.request_id
  LEFT JOIN (SELECT
      request_detail_id,
      MAX(s.date) last_shipment_date,
      SUM(COUNT) shipped_count
    FROM shipment_items si
      INNER JOIN shipments s
        ON si.shipment_id = s.id
    GROUP BY request_detail_id) si
    ON rd.id = si.request_detail_id
  LEFT JOIN (SELECT
      p.request_id,
      MAX(p.payment_date) last_payment_date
    FROM payments p
    GROUP BY p.request_id) p
    ON p.request_id = r.id
WHERE r.is_deleted = 0 AND rd.count > IFNULL(si.shipped_count, 0)
GROUP BY r.id,
         r.number,
         r.reg_date,
         r.lead_time,
         r.ship_date,
         p.last_payment_date,
         si.last_shipment_date
ORDER BY r.reg_date DESC")
                    .SetResultTransformer(new ResultTransformer(objects => new RequestsReportRow
                    {
                        Id = (int)objects[0],
                        Number = (int)objects[1],
                        RegDate = (DateTime)objects[2],
                        LeadTime = (int?)objects[3],
                        ShipDate = (DateTime?)objects[4],
                        LastPaymentDate = (DateTime?)objects[5],
                        LastShipmentDate = (DateTime?)objects[6],
                        Diff = (int?)objects[7],
                        EquipmentLeadTime = (int?)objects[8],
                        WorkStartDate = (DateTime?)objects[9]
                    }, objects => objects.Cast<RequestsReportRow>().ToList())).List<RequestsReportRow>(), "");
        }

        public IList<Request> GetUnpaid()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsPaid).List());
        }
    }
}