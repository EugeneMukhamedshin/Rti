namespace Rti.Model.Repository.NHibernate.ClassMaps
{
    public partial class ShipmentMap
    {
        protected override void OnInitialized()
        {
            base.OnInitialized();
            HasMany(o => o.ShipmentItems).KeyColumn("shipment_id").Not.LazyLoad();
        }
    }
}