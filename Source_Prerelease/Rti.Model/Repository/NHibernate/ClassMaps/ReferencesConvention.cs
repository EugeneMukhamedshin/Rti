using System;
using FluentNHibernate.Conventions;
using FluentNHibernate.Conventions.Instances;

namespace Rti.Model.Repository.NHibernate.ClassMaps
{
    public class ReferencesConvention : IReferenceConvention
    {
        public void Apply(IManyToOneInstance instance)
        {
            instance.ForeignKey(String.Format("{0}_{1}_Fk", instance.EntityType.Name, instance.Name));
        }
    }
}