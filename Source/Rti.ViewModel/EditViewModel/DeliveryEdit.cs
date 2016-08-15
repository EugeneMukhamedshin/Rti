using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class DeliveryEdit: EditEntityViewModel<ShipmentViewModel, Shipment>
    {
        public Lazy<List<DriverViewModel>> DriversSource { get; set; }

        public DeliveryEdit(string name, ShipmentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {

        }

        public override void Refresh()
        {
            base.Refresh();
            DriversSource = new Lazy<List<DriverViewModel>>(() => RepositoryFactory.GetDriverRepository().GetAllActive().Select(o => new DriverViewModel(o, RepositoryFactory)).ToList());
        }

        protected override void DoSave()
        {
            Entity.CopyTo(Source);
            Source.IsChanged = true;
        }
    }
}
