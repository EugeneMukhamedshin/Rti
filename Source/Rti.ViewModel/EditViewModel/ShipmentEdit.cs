using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Annotations;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Lists;

namespace Rti.ViewModel.EditViewModel
{
    public class ShipmentEdit: EditEntityViewModel<ShipmentViewModel, Shipment>
    {
        public ShipmentItemList ShipmentItemList { get; set; }

        public ShipmentEdit(string name, ShipmentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            ShipmentItemList = new ShipmentItemList(entity, Editable, ViewService, RepositoryFactory);
        }

        public override void Refresh()
        {
            base.Refresh();
            ShipmentItemList.Refresh();
        }

        protected override void DoSave()
        {
            base.DoSave();
            ShipmentItemList.SaveChanges();
        }

        protected override bool DoValidate()
        {
            // Здесь надо добавить проверку количества
            foreach (var shipmentItem in ShipmentItemList.Items)
            {
                var notShippedWorkItems = RepositoryFactory.GetWorkItemRepository().GetNotShippedByDrawingId(shipmentItem.RequestDetail.Drawing.Id, Entity.Date, Entity.SortOrder);
                var doneCount = notShippedWorkItems.Sum(o => o.Item2);
                if (shipmentItem.Count > doneCount)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", string.Format("По чертежу {0} невозможно отгрузить {1} деталей, т.к. изготовлено всего {2} деталей", shipmentItem.RequestDetail.Drawing.FullName, shipmentItem.Count, doneCount)));
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
