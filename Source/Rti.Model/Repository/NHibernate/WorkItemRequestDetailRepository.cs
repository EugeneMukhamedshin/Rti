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
from 
    rejected_registrations 
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
                        RequestNumber = (int)objects[1],
                        RequestRegDate = (DateTime)objects[2],
                        DrawingName = (string)objects[3],
                        DetailName = (string)objects[4],
                        RejectedCount = Convert.ToInt32((decimal)objects[5]),
                        MaterialName = (string)objects[6],
                        RejectedMass = (double)objects[7],
                        RejectedPrice = (decimal)objects[8],
                        Expences = (decimal)objects[9]
                    }, objects => objects.Cast<RejectionReportRow>().ToList())).List<RejectionReportRow>(), "");
        }
    }
}