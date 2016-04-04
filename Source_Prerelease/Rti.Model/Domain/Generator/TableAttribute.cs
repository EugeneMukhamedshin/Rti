using System;

namespace Rti.Model.Domain.Generator
{
    [AttributeUsage(AttributeTargets.Class)]
    public class TableAttribute : Attribute
    {
        public String TableName { get; private set; }

        public TableAttribute(String tableName)
        {
            TableName = tableName;
        }
    }
}
