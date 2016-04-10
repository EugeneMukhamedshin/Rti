using System;

namespace Rti.Model.Domain.Generator
{
    public class ReferenceAttribute: Attribute
    {
        public String ColumnName { get; set; }

        public ReferenceAttribute(String columnName)
        {
            ColumnName = columnName;
        }
    }
}
