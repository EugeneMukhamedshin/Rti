<<<<<<< HEAD
ï»¿using System.Linq;
=======
using System.Linq;
>>>>>>> origin/develop
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
<<<<<<< HEAD
            //        !ViewService.ShowConfirmation(new MessageViewModel("Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ",
            //            "Ð‘ÑƒÐ´ÐµÑ‚ Ð¿Ñ€Ð¾Ð¸Ð·Ð²ÐµÐ´ÐµÐ½Ð¾ Ð¿ÐµÑ€ÐµÑ€Ð°ÑÐ¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¸Ðµ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð½Ð¾Ð³Ð¾ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð° Ð´ÐµÑ‚Ð°Ð»ÐµÐ¹ Ð¿Ð¾ Ð·Ð°ÑÐ²ÐºÐ°Ð¼. ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ðµ.")))
=======
            //        !ViewService.ShowConfirmation(new MessageViewModel("Âíèìàíèå",
            //            "Áóäåò ïðîèçâåäåíî ïåðåðàñïðåäåëåíèå âûïîëíåííîãî êîëè÷åñòâà äåòàëåé ïî çàÿâêàì. Ïîäòâåðäèòå èçìåíåíèå.")))
>>>>>>> origin/develop
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