using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using NHibernate;
using NHibernate.Linq;
using NHibernate.Transform;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public class ReportRepository : NHibernateRepository, IReportRepository
    {
        protected IEnumerable<XElement> GetXElementsFromQuery(string sqlQuery, Func<IQuery, IQuery> customSetup = null)
        {
            return
                ExecuteFuncOnSession(
                    s =>
                    {
                        var query = s.CreateSQLQuery(sqlQuery)
                            .SetResultTransformer(Transformers.AliasToEntityMap);
                        if (customSetup != null)
                            query = customSetup(query);
                        return query
                            .List<Hashtable>()
                            .Select(
                                t =>
                                    new XElement("row",
                                        t.Keys.Cast<string>()
                                            .Select(
                                                key =>
                                                    new XAttribute(key,
                                                        t[key] == null ? string.Empty : t[key].ToString()))));
                    }, "");
        }

        public XDocument GetRequestsByMethodsReport(DateTime startDate, DateTime endDate)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  m.id MethodId,
  m.name MethodName,
  r.number RequestNumber,
  r.reg_date RegDate,
  d.name DrawingName,
  g.name GroupName,
  d1.name DetailName,
  rd.Count Count,
  t.work_time WorkTime
FROM request_details rd
  INNER JOIN requests r
    ON rd.request_id = r.id
  INNER JOIN drawings d
    ON rd.drawing_id = d.id
  INNER JOIN groups g
    ON rd.group_id = g.id
  INNER JOIN methods m
    ON d.method_id = m.id
  INNER JOIN details d1
    ON rd.detail_id = d1.id
  INNER JOIN (SELECT
      drawing_id,
      SUM(norm_time) work_time
    FROM (SELECT
        *
      FROM drawing_flowsheet_processes
      WHERE process_id IN (7, 8, 9)) dfp
    GROUP BY dfp.drawing_id) t
    ON d.id = t.drawing_id
WHERE r.reg_date BETWEEN :p_start_date AND :p_end_date
ORDER BY RegDate ASC",
                query => query.SetParameter("p_start_date", startDate).SetParameter("p_end_date", endDate));
            var rowDict =
                rows.ToLookup(
                    e => new
                    {
                        MethodId = e.Attribute("MethodId").Value,
                        MethodName = e.Attribute("MethodName").Value
                    },
                    r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    rowDict.Select(
                        g =>
                            new XElement("method", 
                                new XAttribute("MethodId", g.Key.MethodId),
                                new XAttribute("MethodName", g.Key.MethodName), 
                                g))));
            return doc;
        }

        public XDocument GetDrawingShipmentsReport(DateTime startDate, DateTime endDate, int? drawingId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  d.id DrawingId,
  d.name DrawingName,
  g.name GroupName,
  d1.name DetailName,
  c.name CustomerName,
  r.number RequestNumber,
  r.reg_date RequestRegDate,
  rd.count RequestCount,
  s.sort_order ShipmentNumber,
  s.date ShipmentDate,
  si.count ShipmentCount
FROM request_details rd
  INNER JOIN requests r
    ON rd.request_id = r.id
  INNER JOIN drawings d
    ON rd.drawing_id = d.id
  INNER JOIN groups g
    ON rd.group_id = g.id
  INNER JOIN details d1
    ON rd.detail_id = d1.id
  INNER JOIN contragents c
    ON r.customer_id = c.id
  LEFT JOIN shipment_items si
    ON si.request_detail_id = rd.id
  LEFT JOIN shipments s
    ON si.shipment_id = s.id
WHERE r.reg_date BETWEEN :p_start_date AND :p_end_date
AND d.id = IFNULL(:p_drawing_id, d.id)
ORDER BY r.reg_date ASC, s.date ASC",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_drawing_id", drawingId));
            var rowDict = rows.ToLookup(e => new
            {
                DrawingId = e.Attribute("DrawingId").Value,
                DrawingName = e.Attribute("DrawingName").Value,
                GroupName = e.Attribute("GroupName").Value,
                DetailName = e.Attribute("DetailName").Value
            }, r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    rowDict.Select(g =>
                        new XElement("drawing",
                            new XAttribute("DrawingId", g.Key.DrawingId),
                            new XAttribute("DrawingName", g.Key.DrawingName),
                            new XAttribute("GroupName", g.Key.GroupName),
                            new XAttribute("DetailName", g.Key.DetailName), g))));
            return doc;
        }

        public XDocument GetUsedMaterialsReport(DateTime startDate, DateTime endDate, int? materialId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  m.id MaterialId,
  m.name MaterialName,
  d.name DrawingName,
  g.name GroupName,
  d.name DetailName,
  wi.work_date WorkDate,
  wi.batch_number BatchNumber,
  wi.done_count DoneCount,
  wi.done_count * d.mass_with_shruff UsedMaterial,
  wi.rejected_count RejectedCount,
  wi.rejected_count * d.mass_with_shruff RejectedMaterial
FROM work_items wi
  INNER JOIN drawings d
    ON wi.drawing_id = d.id
  INNER JOIN groups g
    ON d.group_id = g.id
  INNER JOIN details d1
    ON d.detail_id = d1.id
  INNER JOIN materials m
    ON d.material_id = m.id
WHERE wi.work_date BETWEEN :p_start_date AND :p_end_date
AND m.id = IFNULL(:p_material_id, m.id)
ORDER BY m.name, wi.work_date",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_material_id", materialId));
            var rowDict = rows.ToLookup(e => new
            {
                MaterialId = e.Attribute("MaterialId").Value,
                MaterialName = e.Attribute("MaterialName").Value
            }, r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    rowDict.Select(g =>
                        new XElement("material",
                            new XAttribute("id", g.Key.MaterialId),
                            new XAttribute("name", g.Key.MaterialName), 
                            g))));
            return doc;
        }

        public XDocument GetRequestDirectExpencesReport(DateTime startDate, DateTime endDate, int? requestId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  RequestId,
  RequestNumber,
  RequestRegDate,
  DetailName,
  DrawingName,
  GroupName,
  MaterialCost,
  TransportCost,
  SalaryCost,
  PowerForFormedCost,
  OtherPowerCost,
  MaterialCost + TransportCost + SalaryCost + PowerForFormedCost + OtherPowerCost SummaryCost,
  DetailPrice,
  DetailCount
FROM (SELECT
    r.id RequestId,
    r.number RequestNumber,
    r.reg_date RequestRegDate,
    d1.name DetailName,
    d.name DrawingName,
    g.name GroupName,
    IFNULL(c.Main_Material, 0) + IFNULL(c.Rubber, 0) + IFNULL(c.Clue, 0) + IFNULL(c.Armature, 0) + IFNULL(c.Sand, 0) + IFNULL(c.Textile, 0) + IFNULL(c.Other_Material, 0) MaterialCost,
    IFNULL(c.Transport, 0) TransportCost,
    IFNULL(c.Main_Salary, 0) SalaryCost,
    IFNULL(c.Power_For_Formed, 0) PowerForFormedCost,
    IFNULL(c.Other_Power, 0) OtherPowerCost,
    d.Price DetailPrice,
    rd.Count DetailCount
  FROM request_details rd
    INNER JOIN requests r
      ON rd.request_id = r.id
    INNER JOIN drawings d
      ON rd.drawing_id = d.id
    INNER JOIN groups g
      ON d.group_id = g.id
    INNER JOIN details d1
      ON d.detail_id = d1.id
    INNER JOIN calculations c
      ON d.fact_calculation_id = c.id
  WHERE r.reg_date BETWEEN :p_start_date AND :p_end_date
  AND r.id = IFNULL(:p_request_id, r.id)) t",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_request_id", requestId));
            var rowDict = rows.ToLookup(e => new
            {
                RequestId = e.Attribute("RequestId").Value,
                RequestNumber = e.Attribute("RequestNumber").Value,
                RequestRegDate = e.Attribute("RequestRegDate").Value
            }, r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    rowDict.Select(g =>
                        new XElement("request",
                            new XAttribute("RequestId", g.Key.RequestId),
                            new XAttribute("RequestNumber", g.Key.RequestNumber),
                            new XAttribute("RequestRegDate", g.Key.RequestRegDate),
                            new XAttribute("MaterialCost", g.Sum(o => Convert.ToDecimal(o.Attribute("MaterialCost").Value))),
                            new XAttribute("TransportCost", g.Sum(o => Convert.ToDecimal(o.Attribute("TransportCost").Value))),
                            new XAttribute("SalaryCost", g.Sum(o => Convert.ToDecimal(o.Attribute("SalaryCost").Value))),
                            new XAttribute("PowerForFormedCost", g.Sum(o => Convert.ToDecimal(o.Attribute("PowerForFormedCost").Value))),
                            new XAttribute("OtherPowerCost", g.Sum(o => Convert.ToDecimal(o.Attribute("OtherPowerCost").Value))),
                            new XAttribute("SummaryCost", g.Sum(o => Convert.ToDecimal(o.Attribute("SummaryCost").Value))),
                            new XAttribute("SummaryCount", g.Sum(o => Convert.ToDecimal(o.Attribute("DetailCount").Value))),
                            new XAttribute("SummaryPrice", g.Sum(o => Convert.ToDecimal(o.Attribute("DetailCount").Value) * Convert.ToDecimal(o.Attribute("DetailPrice").Value))),
                            g))));
            return doc;
        }
    }
}
