using System;
using System.Collections.Generic;
using System.Linq;
using NHibernate.Linq;
using Rti.Model.Domain;
using Rti.Model.Domain.ReportEntities;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class WorkItemRequestDetailRepository : NHibernateRepository<WorkItemRequestDetail>, IWorkItemRequestDetailRepository
    {
        public IList<WorkItemRequestDetail> GetByWorkItemId(int workItemId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.WorkItem.Id == workItemId).List());
        }

        public IList<WorkItemRequestDetail> GetByRequestDetailId(int requestDetailId)
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => o.RequestDetail.Id == requestDetailId).List());
        }

        public void DeleteByWorkItemId(int workItemId)
        {
            ExecuteActionOnSession(
                s =>
                    s.CreateSQLQuery("delete from work_item_request_details where work_item_id = :p_work_item_id")
                        .SetInt32("p_work_item_id", workItemId)
                        .ExecuteUpdate(), "");
        }

        public IList<RejectionReportRow> GetRejectionReport(DateTime startDate, DateTime endDate, int? employeeId)
        {
            return ExecuteFuncOnSession(s =>
                s.CreateSQLQuery(
                    @"
select 
    employee_name,
    request_number,
    request_reg_date,
    drawing_name,
    detail_name, 
    rejected_count,
    material_name,
    rejected_mass,
    rejected_price,
    expences 
from (
    SELECT
      e.full_name employee_name,
      e.id employee_id,
      r.number request_number,
      r.reg_date request_reg_date,
      d1.name drawing_name,
      d.name detail_name,
      rdj.rejected_count rejected_count,
      m.name material_name,
      d1.mass_with_shruff * rdj.rejected_count rejected_mass,
      m.Price * d1.mass_with_shruff * rdj.rejected_count rejected_price,
      c.Transport + c.Main_Salary + c.Additional_Salary + c.Fixed_Tax + c.Power_For_Formed + c.Other_Power expences
    FROM (SELECT
        wird.request_detail_id,
        e.id employee_id,
        SUM(wi.rejected_count) AS rejected_count
      FROM work_items wi
        INNER JOIN work_item_request_details wird
          ON wi.id = wird.work_item_id
        INNER JOIN employees e
          ON wi.employee_id = e.id
      GROUP BY e.id,
               wird.request_detail_id
      HAVING rejected_count > 0) rdj
      INNER JOIN request_details rd
        ON rd.id = rdj.request_detail_id
        AND rd.is_deleted = 0
      INNER JOIN requests r
        ON rd.request_id = r.id
        AND r.is_deleted = 0
      INNER JOIN drawings d1
        ON rd.drawing_id = d1.id
      INNER JOIN details d
        ON rd.detail_id = d.id
      INNER JOIN materials m
        ON rd.material_id = m.id
      INNER JOIN calculations c
        ON d1.fact_calculation_id = c.id
      INNER JOIN employees e
        ON rdj.employee_id = e.id) r
where 
    :p_start_date <= request_reg_date and 
    request_reg_date <= :p_end_date and 
    employee_id = ifnull(:p_employee_id, employee_id)")
                    .SetParameter("p_start_date", startDate)
                    .SetParameter("p_end_date", endDate)
                    .SetParameter("p_employee_id", employeeId)
                    .SetResultTransformer(new ResultTransformer(objects => new RejectionReportRow
                    {
                        EmployeeName = (string)objects[0],
                        RequestNumber = Convert.ToInt32(objects[1]),
                        RequestRegDate = (DateTime)objects[2],
                        DrawingName = (string)objects[3],
                        DetailName = (string)objects[4],
                        RejectedCount = Convert.ToInt32(objects[5]),
                        MaterialName = (string)objects[6],
                        RejectedMass = Convert.ToDouble(objects[7]),
                        RejectedPrice = Convert.ToDecimal(objects[8]),
                        Expences = Convert.ToDecimal(objects[9])
                    }, objects => objects.Cast<RejectionReportRow>().ToList())).List<RejectionReportRow>(), "");
        }
    }
}