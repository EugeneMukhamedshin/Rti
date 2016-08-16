using System;

namespace Rti.Model.Domain.Generator
{
    public class EntityField
    {
        public String Name { get; set; }
        public String ColumnName { get; set; }
        public String ColumnType { get; set; }
        public String Type { get; set; }
        public bool IsNullable { get; set; }
    }
}