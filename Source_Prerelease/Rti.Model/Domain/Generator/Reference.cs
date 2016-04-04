using System;

namespace Rti.Model.Domain.Generator
{
    public class Reference
    {
        public String ReferencedTable { get; set; }
        public String ColumnName { get; set; }
        public String Name { get; set; }
        public String ReferencedEntityName { get; set; }
        public bool IsNullable { get; set; }
    }
}
