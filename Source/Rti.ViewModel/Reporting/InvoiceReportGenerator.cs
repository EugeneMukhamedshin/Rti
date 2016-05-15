using System;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Reporting.Generator;

namespace Rti.ViewModel.Reporting
{
    public class InvoiceReportGenerator: ReportGenerator
    {
        public byte[] BuildReport(int requestId, IRepositoryFactory repositoryFactory)
        {
            var requestModel = repositoryFactory.GetRequestRepository().GetById(requestId);
            if (requestModel == null)
                throw new InvalidOperationException("Заявка не найдена");
            var request = new RequestViewModel(requestModel, repositoryFactory);
            var requestDetails = repositoryFactory.GetRequestDetailRepository().GetByRequestId(requestId)
                .Select(o => new RequestDetailViewModel(o, repositoryFactory));
            var doc = new XDocument(new XDeclaration("2.0", "utf-8", "true"),
                new XElement("root",
                    new XElement("set",
                        new XAttribute("name", "Requests"),
                        request.GetXElement("row")
                        ),
                    new XElement("set",
                        new XAttribute("name", "RequestDetails"),
                        requestDetails.Select(o => o.GetXElement("row"))
                        )
                    ));
            var navigator = doc.CreateNavigator();
            var template =
                File.ReadAllText(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Reports", "invoice.xslt"));
            var content = XslTransformation(navigator, template);
            File.WriteAllBytes("temp.xml", content);
            return null;
        }
    }
}
