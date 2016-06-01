namespace Rti.Model.Repository.NHibernate
{
    public partial class ShipmentItemWorkItemRepository
    {
        public void DeleteByShipmentItemId(int shipmentItemId)
        {
            ExecuteActionOnSession(
                s =>
                    s.CreateSQLQuery("delete from shipment_item_work_items where shipment_item_id = :p_shipment_item_id")
                        .SetInt32("p_shipment_item_id", shipmentItemId)
                        .ExecuteUpdate(), "");
        }
    }
}