using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate.Criterion;
using NHibernate.Linq;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;

namespace Rti.Model.Repository.NHibernate
{
    public partial class ShipmentRepository
    {
        public IList<Shipment> GetByPeriod(DateTime startDate, DateTime endDate, int? customerId, int? drawingId)
        {
            return
                ExecuteFuncOnSession(
                    session =>
                    {
                        Shipment s = null;
                        var q = session
                            .QueryOver(() => s)
                            .Where(() => !s.IsDeleted)
                            .AndRestrictionOn(() => s.Date)
                            .IsBetween(startDate).And(endDate);
                        if (customerId.HasValue)
                            q = q.Where(() => s.Recipient.Id == customerId.Value);
                        if (drawingId.HasValue)
                        {
                            RequestDetail rd = null;
                            return
                                q.JoinQueryOver<ShipmentItem>(o => o.ShipmentItems)
                                .JoinAlias(o => o.RequestDetail, () => rd)
                                    .Where(() => rd.Drawing.Id == drawingId.Value).List();
                        }
                        return q.List();
                    });
        }

        public int GetNextSortOrder(DateTime shipmentDate, bool isReplace, bool isAddition)
        {
            var maxSortOrder = ExecuteFuncOnQueryOver(q => q.Where(o => o.Date >= new DateTime(shipmentDate.Year, 1, 1) && o.IsReplace == isReplace && o.IsAddition == isAddition).Select(Projections.Max<Shipment>(o => o.SortOrder)).SingleOrDefault<int?>());
            return maxSortOrder + 1 ?? 1;
        }

        public IList<Shipment> GetByPaymentIds(int[] paymentIds)
        {
            return ExecuteFuncOnQueryOver(q => q.WhereRestrictionOn(o => o.Payment.Id).IsIn(paymentIds).List());
        }

        public IList<ShipmentRow> GetRowsByPeriod(DateTime startDate, DateTime endDate, int? customerId, int? drawingId)
        {
            return ExecuteFuncOnSession(s =>
                s.CreateSQLQuery(@"
SELECT
  s.id,
  s.date,
  s.sort_order,
  s.is_replace,
  s.is_addition,
  si.details,
  c.name customer_name,
  r.number request_number,
  r.reg_date,
  r.invoice_date,
  si.sum shipment_sum,
  r.sum request_sum
FROM shipments s
  INNER JOIN requests r
    ON s.request_id = r.id
  INNER JOIN contragents c
    ON r.customer_id = c.id
  INNER JOIN (SELECT
      si.shipment_id,
      SUM(si.count * si.Price) sum,
      GROUP_CONCAT(CONCAT(d.name, ' ', g.name, '.', d1.name, ' ', si.count, 'רע.') SEPARATOR ';') details
    FROM shipment_items si
      INNER JOIN request_details rd
        ON si.request_detail_id = rd.id
      INNER JOIN drawings d1
        ON rd.drawing_id = d1.id
      INNER JOIN details d
        ON rd.detail_id = d.id
      INNER JOIN groups g
        ON rd.group_id = g.id
    WHERE rd.drawing_id = IFNULL(:p_drawing_id, rd.drawing_id)
    GROUP BY si.shipment_id) si
    ON si.shipment_id = s.id
WHERE c.id = IFNULL(:p_customer_id, c.id)
AND s.date BETWEEN :p_start_date AND :p_end_date")
                    .SetParameter("p_start_date", startDate)
                    .SetParameter("p_end_date", endDate)
                    .SetParameter("p_drawing_id", drawingId)
                    .SetParameter("p_customer_id", customerId)
                    .SetResultTransformer(new ResultTransformer(objects => new ShipmentRow
                    {
                        Id = (int)objects[0],
                        Date = (DateTime)objects[1],
                        SortOrder = (int)objects[2],
                        IsReplace = (int)objects[3] == 1,
                        IsAddition = (int)objects[4] == 1,
                        Details = (string)objects[5],
                        CustomerName = (string)objects[6],
                        RequestNumber = (int)objects[7],
                        RequestRegDate = (DateTime)objects[8],
                        InvoiceDate = (DateTime?)objects[9],
                        ShipmentSum = (decimal)objects[10],
                        RequestSum = (decimal)objects[11]
                    },
                    objects => objects.Cast<ShipmentRow>().ToList())).List<ShipmentRow>(), "");
        }
    }
}