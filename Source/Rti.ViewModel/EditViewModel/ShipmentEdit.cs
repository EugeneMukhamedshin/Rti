using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
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
            return base.DoValidate();
            // Здесь надо добавить проверку количества
        }
    }
}
