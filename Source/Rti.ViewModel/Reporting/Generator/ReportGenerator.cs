using System.IO;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;

namespace Rti.ViewModel.Reporting.Generator
{
    public class ReportGenerator
    {
        protected byte[] GetReport(XmlReader reader, string xslt)
        {
            return XslTransformation(new XPathDocument(reader), xslt);
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
    }

    public class SqlReportGenerator : ReportGenerator
    {
        
    }
}