using System;

namespace Rti.Model.Domain.Generator
{
    public class EntityDeclaration
    {
        public String TableNameMask { get; set; }
        public String ReplaceWhat { get; set; }
        public String ReplaceWith { get; set; }
    }
}