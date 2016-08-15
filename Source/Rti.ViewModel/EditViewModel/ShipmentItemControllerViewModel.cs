using System.Linq;
using Rti.Model.Domain.BusinessLogic;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class ShipmentItemControllerViewModel
    {
        private ShipmentItemController _shipmentItemController;

        public IViewService ViewService { get; set; }
        public IRepositoryFactory RepositoryFactory { get; set; }

        public ShipmentItemControllerViewModel(IViewService viewService, IRepositoryFactory repositoryFactory)
        {
            ViewService = viewService;
            RepositoryFactory = repositoryFactory;
            _shipmentItemController = new ShipmentItemController(RepositoryFactory);
        }

        public bool ValidatePost(ShipmentItemViewModel shipmentItem)
        {
            //var followingShipmentItems = RepositoryFactory.GetShipmentItemRepository().GetFollowingItems(shipmentItem.RequestDetail.Drawing.Id, shipmentItem.Shipment.Date, shipmentItem.Shipment.SortOrder);
            //if (followingShipmentItems.Any())
            //{
            //    if (
            //        !ViewService.ShowConfirmation(new MessageViewModel("Внимание",
            //            "Будет произведено перераспределение выполненного количества деталей по заявкам. Подтвердите изменение.")))
            //        return false;
            //}
            return true;
        }

        public void PostShipmentItem(ShipmentItemViewModel shipmentItem)
        {
            shipmentItem.SaveEntity();
            _shipmentItemController.PostShipmentItem(shipmentItem.Entity);
        }
    }
}