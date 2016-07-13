﻿using System;
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
                                                        t[key] ?? string.Empty))));
                    }, "");
        }

        // Done
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
AND r.is_deleted = 0
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")), new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Methods",
                    rowDict.Select(
                        g =>
                            new XElement("Method",
                                new XAttribute("MethodId", g.Key.MethodId),
                                new XAttribute("MethodName", g.Key.MethodName),
                                g)))));
            return doc;
        }

        // Done
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
AND r.is_deleted = 0
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Drawings",
                    rowDict.Select(g =>
                            new XElement("Drawing",
                            new XAttribute("DrawingId", g.Key.DrawingId),
                            new XAttribute("DrawingName", g.Key.DrawingName),
                            new XAttribute("GroupName", g.Key.GroupName),
                                new XAttribute("DetailName", g.Key.DetailName), g)))));
            return doc;
        }

        // Done
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
AND wi.done_count <> 0
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Materials",
                    rowDict.Select(g =>
                            new XElement("Material",
                                new XAttribute("MaterialId", g.Key.MaterialId),
                                new XAttribute("MaterialName", g.Key.MaterialName),
                                g)))));
            return doc;
        }

        // Done
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
  AND r.is_deleted = 0
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Requests",
                    rowDict.Select(g =>
                            new XElement("Request",
                            new XAttribute("RequestId", g.Key.RequestId),
                            new XAttribute("RequestNumber", g.Key.RequestNumber),
                            new XAttribute("RequestRegDate", g.Key.RequestRegDate),
                                g)))));
            return doc;
        }

        // Done
        public XDocument GetWorkItemDirectExpencesReport(DateTime startDate, DateTime endDate)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  t.WorkDate,
  t.DrawingName,
  t.GroupName,
  t.DetailName,
  t.DoneCount,
  t.MaterialCost,
  t.TransportCost,
  t.SalaryCost,
  t.PowerForFormedCost,
  t.OtherPowerCost,
  t.MaterialCost +
  t.TransportCost +
  t.SalaryCost +
  t.PowerForFormedCost +
  t.OtherPowerCost SummaryCost
FROM (SELECT
    wi.work_date WorkDate,
    d.name DrawingName,
    g.name GroupName,
    d1.name DetailName,
    wi.done_count - wi.rejected_count DoneCount,
    IFNULL(c.Main_Material, 0) + IFNULL(c.Rubber, 0) + IFNULL(c.Clue, 0) + IFNULL(c.Armature, 0) + IFNULL(c.Sand, 0) + IFNULL(c.Textile, 0) + IFNULL(c.Other_Material, 0) MaterialCost,
    IFNULL(c.Transport, 0) TransportCost,
    IFNULL(c.Main_Salary, 0) SalaryCost,
    IFNULL(c.Power_For_Formed, 0) PowerForFormedCost,
    IFNULL(c.Other_Power, 0) OtherPowerCost
  FROM work_items wi
    JOIN work_item_package wip
      ON wip.date = wi.work_date
    JOIN drawings d
      ON wi.drawing_id = d.id
    JOIN groups g
      ON d.group_id = g.id
    JOIN details d1
      ON d.detail_id = d1.id
    JOIN calculations c
      ON d.fact_calculation_id = c.id
  WHERE wi.work_date BETWEEN :p_start_date AND :p_end_date
  ORDER BY wi.work_date, wi.sort_order) t",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate));
            var rowDict = rows.ToLookup(e => new
            {
                WorkDate = e.Attribute("WorkDate").Value
            }, r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("WorkItemPackages",
                    rowDict.Select(g =>
                            new XElement("WorkItemPackage",
                            new XAttribute("WorkDate", g.Key.WorkDate),
                                g)))));
            return doc;
        }

        public XDocument GetShipmentDirectExpencesReport(DateTime startDate, DateTime endDate, int? shipmentId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  t.ShipmentId,
  t.ShipmentNumber,
  t.ShipmentDate,
  t.DrawingName,
  t.GroupName,
  t.DetailName,
  t.DoneCount,
  t.MaterialCost,
  t.TransportCost,
  t.SalaryCost,
  t.PowerForFormedCost,
  t.OtherPowerCost,
  t.MaterialCost +
  t.TransportCost +
  t.SalaryCost +
  t.PowerForFormedCost +
  t.OtherPowerCost SummaryCost
FROM (SELECT
    s.id ShipmentId,
    s.Sort_Order ShipmentNumber,
    s.date ShipmentDate,
    d.name DrawingName,
    g.name GroupName,
    d1.name DetailName,
    si.count DoneCount,
    IFNULL(c.Main_Material, 0) + IFNULL(c.Rubber, 0) + IFNULL(c.Clue, 0) + IFNULL(c.Armature, 0) + IFNULL(c.Sand, 0) + IFNULL(c.Textile, 0) + IFNULL(c.Other_Material, 0) MaterialCost,
    IFNULL(c.Transport, 0) TransportCost,
    IFNULL(c.Main_Salary, 0) SalaryCost,
    IFNULL(c.Power_For_Formed, 0) PowerForFormedCost,
    IFNULL(c.Other_Power, 0) OtherPowerCost
  FROM shipment_items si
    JOIN shipments s
      ON si.shipment_id = s.id
    JOIN request_details rd
      ON si.request_detail_id = rd.id
    JOIN drawings d
      ON rd.drawing_id = d.id
    JOIN groups g
      ON d.group_id = g.id
    JOIN details d1
      ON d.detail_id = d1.id
    JOIN calculations c
      ON d.fact_calculation_id = c.id
  WHERE s.date BETWEEN :p_start_date AND :p_end_date
  AND s.is_deleted = 0
  AND s.id = IFNULL(:p_shipment_id, s.id)) t",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_shipment_id", shipmentId));
            var rowDict = rows.ToLookup(e => new
            {
                ShipmentId = e.Attribute("ShipmentId").Value,
                ShipmentDate = e.Attribute("ShipmentDate").Value,
                ShipmentNumber = e.Attribute("ShipmentNumber").Value
            }, r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Shipments",
                        rowDict.Select(g =>
                            new XElement("Shipment",
                                new XAttribute("ShipmentId", g.Key.ShipmentId),
                                new XAttribute("ShipmentDate", g.Key.ShipmentDate),
                                new XAttribute("ShipmentNumber", g.Key.ShipmentNumber),
                                g)))));
            return doc;
        }

        // Done
        public XDocument GetSalaryReport(DateTime startDate, DateTime endDate, int? employeeId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  e.id EmployeeId,
  e.full_name EmployeeFullName,
  IFNULL(wi.done_count - wi.rejected_count, 0) DoneCount,
  IFNULL(c.Main_Salary, 0) * IFNULL(wi.done_count - wi.rejected_count, 0) MainSalary,
  IFNULL(c.Additional_Salary, 0) * IFNULL(wi.done_count - wi.rejected_count, 0) AdditionalSalary
FROM work_items wi
  INNER JOIN employees e
    ON wi.employee_id = e.id
  INNER JOIN drawings d
    ON wi.drawing_id = d.id
  INNER JOIN calculations c
    ON d.fact_calculation_id = c.id
WHERE wi.work_date BETWEEN :p_start_date AND :p_end_date
AND e.id = IFNULL(:p_employee_id, e.id)
ORDER BY e.full_name, wi.work_date",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_employee_id", employeeId));
            var rowDict = rows.ToLookup(e => new
            {
                EmployeeId = e.Attribute("EmployeeId").Value,
                EmployeeFullName = e.Attribute("EmployeeFullName").Value
            }, r => r);
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Employees",
                    rowDict.Select(g =>
                            new XElement("Employee",
                            new XAttribute("EmployeeId", g.Key.EmployeeId),
                            new XAttribute("EmployeeFullName", g.Key.EmployeeFullName),
                                new XAttribute("DoneCount",
                                    g.Sum(o => Convert.ToDecimal(o.Attribute("DoneCount").Value))),
                                new XAttribute("MainSalary",
                                    g.Sum(o => Convert.ToDecimal(o.Attribute("MainSalary").Value))),
                                new XAttribute("AdditionalSalary",
                                    g.Sum(o => Convert.ToDecimal(o.Attribute("AdditionalSalary").Value))),
                                g)))));
            return doc;
        }

        public XDocument GetMakedDetailsReport(DateTime startDate, DateTime endDate, int? drawingId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  g.name GroupName,
  d.name DrawingName,
  d1.name DetailName,
  SUM(wi.done_count - wi.rejected_count) DoneCount
FROM work_items wi
  INNER JOIN drawings d
    ON wi.drawing_id = d.id
  INNER JOIN groups g
    ON d.group_id = g.id
  INNER JOIN details d1
    ON d.detail_id = d1.id
WHERE wi.work_date BETWEEN :p_start_date AND :p_end_date
AND wi.drawing_id = IFNULL(:p_drawing_id, wi.drawing_id)
ORDER BY g.name ASC, d.name ASC",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_drawing_id", drawingId));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Details", rows)));
            return doc;
        }

        public XDocument GetMaterialMovingFullReport(DateTime startDate, DateTime endDate, int? materialId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  m.id MaterialId,
  m.name MaterialName,
  Saldo.count AS Saldo,
  Arrived.count AS Arrived,
  Requested.count AS Requested,
  Used.count AS Used,
  Shipped.count AS Shipped
FROM materials m
  LEFT JOIN (SELECT
      material_id,
      SUM(CASE rec_type WHEN 1 THEN COUNT ELSE -COUNT END) count
    FROM material_movings mm
    WHERE rec_type IN (1, 4)
    AND date < :p_start_date
    GROUP BY material_id) Saldo
    ON Saldo.material_id = m.id
  LEFT JOIN (SELECT
      material_id,
      SUM(COUNT) count
    FROM material_movings m
    WHERE rec_type = 2
    AND date BETWEEN :p_start_date AND :p_end_date) Requested
    ON Requested.material_id = m.id
  LEFT JOIN (SELECT
      material_id,
      SUM(COUNT) count
    FROM material_movings m
    WHERE rec_type = 1
    AND date BETWEEN :p_start_date AND :p_end_date) Arrived
    ON Arrived.material_id = m.id
  LEFT JOIN (SELECT
      material_id,
      SUM(COUNT) count
    FROM material_movings m
    WHERE rec_type = 3
    AND date BETWEEN :p_start_date AND :p_end_date) Used
    ON Used.material_id = m.id
  LEFT JOIN (SELECT
      material_id,
      SUM(COUNT) count
    FROM material_movings m
    WHERE rec_type = 4
    AND date BETWEEN :p_start_date AND :p_end_date) Shipped
    ON Shipped.material_id = m.id
WHERE m.id = IFNULL(:p_material_id, m.id) AND IFNULL(Saldo.count, 0) + IFNULL(Arrived.count, 0) + IFNULL(Requested.count, 0) + IFNULL(Used.count, 0) + IFNULL(Shipped.count, 0) > 0",
                query =>
                    query.SetParameter("p_start_date", startDate)
                        .SetParameter("p_end_date", endDate)
                        .SetParameter("p_material_id", materialId));
            var doc = new XDocument(new XDeclaration("2.0", "utf8", "true"),
                new XElement("root",
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Materials", rows)));
            return doc;
        }

        public XDocument GetMaterialMovingRequestReport(DateTime startDate, DateTime endDate, int? materialId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  m.id MaterialId,
  m.name MaterialName,
  d1.sort_order Articul,
  g.name GroupName,
  d.name DrawingName,
  d1.name DetailName,
  r.number DocNumber,
  rd.Count Count,
  d.mass_with_shruff / 1000 Mass
FROM request_details rd
  INNER JOIN requests r
    ON rd.request_id = r.id
  INNER JOIN drawings d
    ON rd.drawing_id = d.id
  INNER JOIN materials m
    ON d.material_id = m.id
  INNER JOIN groups g
    ON d.group_id = g.id
  INNER JOIN details d1
    ON d.detail_id = d1.id
WHERE d.material_id IS NOT NULL AND m.id = IFNULL(:p_material_id, m.id)
AND r.reg_date BETWEEN :p_start_date AND :p_end_date
AND r.is_deleted = 0
ORDER BY m.name, d1.sort_order",
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Materials",
                    rowDict.Select(g =>
                            new XElement("Material",
                                new XAttribute("MaterialId", g.Key.MaterialId),
                                new XAttribute("MaterialName", g.Key.MaterialName),
                                g)))));
            return doc;
        }

        public XDocument GetMaterialMovingShipmentReport(DateTime startDate, DateTime endDate, int? materialId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  m.id MaterialId,
  m.name MaterialName,
  d1.sort_order Articul,
  g.name GroupName,
  d.name DrawingName,
  d1.name DetailName,
  s.sort_order DocNumber,
  rd.Count Count,
  d.mass_with_shruff / 1000 Mass
FROM shipment_items si
  INNER JOIN shipments s
    ON si.shipment_id = s.id
  INNER JOIN request_details rd
    ON si.request_detail_id = rd.id
  INNER JOIN drawings d
    ON rd.drawing_id = d.id
  INNER JOIN materials m
    ON d.material_id = m.id
  INNER JOIN groups g
    ON d.group_id = g.id
  INNER JOIN details d1
    ON d.detail_id = d1.id
WHERE d.material_id IS NOT NULL AND m.id = IFNULL(:p_material_id, m.id)
AND s.is_deleted = 0
AND s.date BETWEEN :p_start_date AND :p_end_date
ORDER BY m.name, d1.sort_order",
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Materials",
                    rowDict.Select(g =>
                            new XElement("Material",
                                new XAttribute("MaterialId", g.Key.MaterialId),
                                new XAttribute("MaterialName", g.Key.MaterialName),
                                g)))));
            return doc;
        }

        public XDocument GetMaterialMovingWorkItemReport(DateTime startDate, DateTime endDate, int? materialId)
        {
            var rows = GetXElementsFromQuery(@"
SELECT
  m.id MaterialId,
  m.name MaterialName,
  d1.sort_order Articul,
  g.name GroupName,
  d.name DrawingName,
  d1.name DetailName,
  wi.work_date DocNumber,
  wi.task_count Count,
  d.mass_with_shruff / 1000 Mass
FROM work_items wi
  INNER JOIN drawings d
    ON wi.drawing_id = d.id
  INNER JOIN materials m
    ON d.material_id = m.id
  INNER JOIN groups g
    ON d.group_id = g.id
  INNER JOIN details d1
    ON d.detail_id = d1.id
WHERE d.material_id IS NOT NULL AND m.id = IFNULL(:p_material_id, m.id)
AND wi.work_date BETWEEN :p_start_date AND :p_end_date
ORDER BY m.name, d1.sort_order",
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
                    new XElement("Report", new XAttribute("StartDate", startDate.ToString("dd.MM.yyyy")),
                        new XAttribute("EndDate", endDate.ToString("dd.MM.yyyy"))),
                    new XElement("Materials",
                    rowDict.Select(g =>
                            new XElement("Material",
                                new XAttribute("MaterialId", g.Key.MaterialId),
                                new XAttribute("MaterialName", g.Key.MaterialName),
                                g)))));
            return doc;
        }
    }
}
