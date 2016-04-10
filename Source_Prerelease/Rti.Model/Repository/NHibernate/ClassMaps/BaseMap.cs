using FluentNHibernate.Mapping;

namespace Rti.Model.Repository.NHibernate.ClassMaps
{
    public class BaseMap<TEntity>: ClassMap<TEntity>
    {
        protected virtual void OnInitialized() { }
    }
}