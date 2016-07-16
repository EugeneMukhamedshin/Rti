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

        public IList<RequestsReportRow> GetRequestReport(DateTime startDate, DateTime endDate)
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
  rd.equipment_lead_time,
  r.work_start_date,
  CASE 
    WHEN si.not_shipped_count > 0 AND r.ship_date <= CURRENT_DATE() THEN 5 
    WHEN si.not_shipped_count = 0 THEN 4 
    WHEN r.work_start_date IS NULL THEN 0 
    WHEN r.work_start_date IS NOT NULL AND DATEDIFF(r.ship_date, IFNULL(r.work_start_date, r.reg_date)) > r.lead_time THEN 1 
    WHEN r.work_start_date IS NOT NULL AND DATEDIFF(r.ship_date, IFNULL(r.work_start_date, r.reg_date)) = r.lead_time THEN 2 
    WHEN r.work_start_date IS NOT NULL AND DATEDIFF(r.ship_date, IFNULL(r.work_start_date, r.reg_date)) < r.lead_time THEN 3
  END request_status
FROM requests r
  LEFT JOIN (SELECT
      rd.request_id,
      MAX(rd.equipment_lead_time) equipment_lead_time
    FROM request_details rd
    GROUP BY rd.request_id) rd
    ON r.id = rd.request_id
  LEFT JOIN (SELECT
      p.request_id,
      MAX(p.payment_date) last_payment_date
    FROM payments p
    GROUP BY p.request_id) p
    ON r.id = p.request_id
  LEFT JOIN (SELECT
      si.request_id,
      SUM(si.requested_count) - SUM(si.shipped_count) not_shipped_count,
      MAX(si.last_shipment_date) last_shipment_date
    FROM (SELECT
        rd.request_id,
        rd.id request_detail_id,
        rd.count requested_count,
        SUM(IFNULL(si.count, 0)) shipped_count,
        MAX(s.date) last_shipment_date
      FROM shipment_items si
        INNER JOIN shipments s
          ON si.shipment_id = s.id
        INNER JOIN request_details rd
          ON si.request_detail_id = rd.id
      GROUP BY rd.request_id,
               rd.id,
               rd.count) si
    GROUP BY si.request_id) si
    ON r.id = si.request_id
WHERE r.is_deleted = 0
AND r.reg_date BETWEEN :p_start_date AND :p_end_date")
                    .SetParameter("p_start_date", startDate)
                    .SetParameter("p_end_date", endDate)
                    .SetResultTransformer(new ResultTransformer(objects => new RequestsReportRow
                    {
                        Id = (int)objects[0],
                        Number = (int)objects[1],
                        RegDate = (DateTime)objects[2],
                        LeadTime = (int?)objects[3],
                        ShipDate = (DateTime?)objects[4],
                        LastPaymentDate = (DateTime?)objects[5],
                        LastShipmentDate = (DateTime?)objects[6],
                        EquipmentLeadTime = (int?)objects[7],
                        WorkStartDate = (DateTime?)objects[8],
                        Status = (RequestStatus)Convert.ToInt32(objects[9])}, objects => objects.Cast<RequestsReportRow>().ToList())).List<RequestsReportRow>(), "");
        }

        public IList<Request> GetUnpaid()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsPaid).List());
        }
    }
}