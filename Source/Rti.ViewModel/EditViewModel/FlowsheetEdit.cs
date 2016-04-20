using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Lists;

namespace Rti.ViewModel.EditViewModel
{
    public class FlowsheetEdit: EditEntityViewModel<FlowsheetViewModel, Flowsheet>
    {
        public FlowsheetMachineList FlowsheetMachineList { get; set; }

        public Lazy<List<ContragentViewModel>> CustomersSource { get; set; }

        public FlowsheetEdit(string name, FlowsheetViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            FlowsheetMachineList = new FlowsheetMachineList(entity, Editable, ViewService, RepositoryFactory);

            CustomersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Customer).Select(o => new ContragentViewModel(o, RepositoryFactory)).ToList());
        }

        public override void Refresh()
        {
            base.Refresh();
            FlowsheetMachineList.Refresh();
        }
    }
}
