﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using System.Xml.Xsl;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Reporting.Generator;

namespace Rti.ViewModel.Reporting
{
    public class ReportService
    {
        public IRepositoryFactory RepositoryFactory { get; private set; }
        public string XslPath { get; set; }

        #region Protected

        protected byte[] GetReport(Func<IReportRepository, XDocument> reportGetFunc, string xsl)
        {
            var repository = RepositoryFactory.GetReportRepository();
            var doc = reportGetFunc(repository);
            return XslTransformation(doc.CreateNavigator(), xsl);
        }

        protected static byte[] XslTransformation(IXPathNavigable xml, string xsl)
        {
            var xslt = new XslCompiledTransform();
            using (var layout = new StringReader(xsl))
            using (var stream = new MemoryStream())
            using (var xmlLayout = new XmlTextReader(layout))
            {
                xslt.Load(xmlLayout);
                return XslTransformationInternal(xml, xslt, stream);
            }
        }

        private static byte[] XslTransformationInternal(IXPathNavigable xml, XslCompiledTransform xslt, MemoryStream stream)
        {
            var args = new XsltArgumentList();
            args.AddExtensionObject("urn:rti", new XslExtensions());
            xslt.Transform(xml, args, stream);
            return stream.ToArray();
        }

        #endregion

        public ReportService(IRepositoryFactory repositoryFactory, string xslPath)
        {
            RepositoryFactory = repositoryFactory;
            XslPath = xslPath;
        }

        public byte[] GetRequestsByMethodsReport(DateTime startDate, DateTime endDate)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetRequestsByMethodsReport.xslt"));
            return GetReport(r => r.GetRequestsByMethodsReport(startDate, endDate), xsl);
        }

        public byte[] GetDrawingShipmentsReport(DateTime startDate, DateTime endDate, DrawingViewModel drawing)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetDrawingShipmentsReport.xslt"));
            return GetReport(r => r.GetDrawingShipmentsReport(startDate, endDate, drawing == null ? (int?)null : drawing.Id), xsl);
        }

        public byte[] GetUsedMaterialsReport(DateTime startDate, DateTime endDate, MaterialViewModel material)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetUsedMaterialsReport.xslt"));
            return GetReport(r => r.GetUsedMaterialsReport(startDate, endDate, material == null ? (int?)null : material.Id), xsl);
        }

        public byte[] GetRequestDirectExpencesReport(DateTime startDate, DateTime endDate, RequestViewModel request)
        {
            var xsl = File.ReadAllText(Path.Combine(XslPath, "GetRequestDirectExpencesReport.xslt"));
            return GetReport(r => r.GetRequestDirectExpencesReport(startDate, endDate, request == null ? (int?)null : request.Id), xsl);
        }
    }
}
