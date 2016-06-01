namespace Rti.Model.Repository.Interfaces
{
    public partial interface IShipmentItemWorkItemRepository
    {
        void DeleteByShipmentItemId(int shipmentItemId);
    }
}