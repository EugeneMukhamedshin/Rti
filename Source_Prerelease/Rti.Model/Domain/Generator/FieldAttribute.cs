using System;

namespace Rti.Model.Domain.Generator
{
    [AttributeUsage(AttributeTargets.Property)]
    public class FieldAttribute : Attribute
    {
        public String FieldName { get; private set; }

        public FieldAttribute(String fieldName)
        {
            FieldName = fieldName;
        }
    }
}