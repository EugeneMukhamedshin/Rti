using System;
using System.IO;
using System.Linq;
using Microsoft.Office.Interop.Word;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting
{
    public class ContractReportGenerator
    {
        public void BuildReport(int requestId, IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            var requestModel = repositoryFactory.GetRequestRepository().GetById(requestId);
            if (requestModel == null)
                throw new InvalidOperationException("Заявка не найдена");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var fileName = string.Format("Договор {0} от {1:dd.MM.yyyy}.doc", request.Contract.FullNumber, request.Contract.Date);
            if (!viewService.ShowFileDialog(ref fileName, "Файлы Word (*.doc)|*.doc", true))
                return;

            var template = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "contract.doc");
            try
            {
                var application = new Application().AsReleasable();
                var documents = application.Documents.AsReleasable();
                application.Visible = false;
                application.ScreenUpdating = false;
                var document = documents.Open(template).AsReleasable();

                foreach (var field in document.Fields.Cast<Field>())
                {
                    var parts = field.Code.Text.Trim().Split('.').ToList();
                    field.Select();
                    var value = request.GetPropertyValue(parts);
                    application.Selection.TypeText(value == null ? string.Empty : value.ToString());
                }

                document.SaveAs(fileName, WdSaveFormat.wdFormatDocumentDefault);
                application.Visible = true;
                application.ScreenUpdating = true;
            }
            catch (Exception ex)
            {
            }
            finally
            {
                ReleasableObjectContext.Release();
            }
        }
    }
}
