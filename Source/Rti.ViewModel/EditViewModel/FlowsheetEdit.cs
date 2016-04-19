using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Lists;

namespace Rti.ViewModel.EditViewModel
{
    public class FlowsheetEdit: EditEntityViewModel<FlowsheetViewModel, Flowsheet>
    {
        public FlowsheetEquipmentList FlowsheetEquipmentList { get; set; }

        public FlowsheetEdit(string name, FlowsheetViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            FlowsheetEquipmentList = new FlowsheetEquipmentList(entity, Editable, ViewService, RepositoryFactory);
        }

        public override void Refresh()
        {
            base.Refresh();
            FlowsheetEquipmentList.Refresh();
        }

        protected override void DoInternalSave()
        {
            base.DoInternalSave();
            FlowsheetEquipmentList.SaveChanges();
        }
    }
}
