using System;

namespace Rti.Model.Domain.Generator
{
    public class ReferenceAttribute: Attribute
    {
        public String ColumnName { get; set; }

        public bool IsManuallyMapped { get; set; }

        public ReferenceAttribute(String columnName, bool isManuallyMapped = false)
        {
            ColumnName = columnName;
            IsManuallyMapped = isManuallyMapped;
        }
    }
}
