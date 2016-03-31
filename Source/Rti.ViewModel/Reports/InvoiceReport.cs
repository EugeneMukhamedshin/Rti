using System.Data;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Reports
{
    public class InvoiceReport
    {
        public void BuildReport(int requestId, IRepositoryFactory repositoryFactory)
        {
            var request = repositoryFactory.GetRequestRepository().GetById(requestId);
            var requestDetails = repositoryFactory.GetRequestDetailRepository().GetByRequestId(requestId);
            var dataset = new DataSet();
            var requestTable = dataset.Tables.Add("Requests");
            var levelCol = requestTable.Columns.Add("__level");
            var numberCol = requestTable.Columns.Add("Number");
            var customerCol = requestTable.Columns.Add("Customer");
            var requestRow = requestTable.NewRow();
            requestRow[levelCol] = 0;
            requestRow[numberCol] = string.Format("Счет на оплату №{0} от {1:dd.MM.yyyy}", request.Number, request.RegDate);
            if (request.Customer != null)
                requestRow[customerCol] = string.Format("{0}, ИНН {1}, КПП {2}, {3}, Счет №{4} в {5}, БИК {6}, к/с {7}",
                    request.Customer.Name,
                    request.Customer.Inn,
                    request.Customer.Kpp,
                    request.Customer.Address,
                    request.Customer.Account,
                    request.Customer.Bank,
                    request.Customer.Bik,
                    request.Customer.CorrAccount);
            requestTable.Rows.Add(requestRow);
            var requestDetailsTable = dataset.Tables.Add("RequestDetails");
            var levelColumn = requestDetailsTable.Columns.Add("__level");
            var numberColumn = requestDetailsTable.Columns.Add("Number");
            var nameColumn = requestDetailsTable.Columns.Add("Name");
            var countColumn = requestDetailsTable.Columns.Add("Count");
            var unitColumn = requestDetailsTable.Columns.Add("Unit");
            var priceColumn = requestDetailsTable.Columns.Add("Price");
            var sumColumn = requestDetailsTable.Columns.Add("Sum");
            var counter = 1;
            foreach (var requestDetail in requestDetails)
            {
                var requestDetailRow = requestDetailsTable.NewRow();
                requestDetailRow[levelColumn] = 0;
                requestDetailRow[numberColumn] = counter++;
                requestDetailRow[nameColumn] = requestDetail.Detail == null ? null : requestDetail.Detail.Name;
                requestDetailsTable.Rows.Add(requestDetailRow);
            }
        }
    }
}
