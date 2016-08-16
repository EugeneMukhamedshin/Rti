using System;
using System.Collections.Generic;

namespace Rti.Model.Domain.Generator
{
    public class Entity
    {
        public String TableName { get; set; }
        public String Name { get; set; }
        public List<EntityField> Fields { get; set; }
        public List<Reference> References { get; set; } 
    }
}