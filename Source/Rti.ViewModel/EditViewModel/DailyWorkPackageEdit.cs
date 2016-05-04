using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Lists;

namespace Rti.ViewModel.EditViewModel
{
    public class DailyWorkPackageEdit: EditEntityViewModel<DailyWorkPackageViewModel, DailyWorkPackage>
    {
        public Lazy<List<DrawingViewModel>> DrawingsSource { get; set; }
        public Lazy<List<EmployeeViewModel>> EmployeesSource { get; set; }

        public DailyWorkPackageDetailList DailyWorkPackageDetailList { get; set; }

        public DailyWorkPackageEdit(string name, DailyWorkPackageViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            DailyWorkPackageDetailList = new DailyWorkPackageDetailList(entity, Editable, ViewService, RepositoryFactory);
        }

        public override void Refresh()
        {
            base.Refresh();
            DailyWorkPackageDetailList.Refresh();

            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAll().OrderBy(o => o.Id).Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList());
            EmployeesSource = new Lazy<List<EmployeeViewModel>>(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().OrderBy(o => o.FullName).Select(o => new EmployeeViewModel(o, RepositoryFactory)).ToList());
        }

        protected override void DoInternalSave()
        {
            base.DoInternalSave();
            if (Entity.IsChanged || Entity.IsNewEntity)
                Entity.SaveEntity();
            DailyWorkPackageDetailList.SaveChanges();
        }

        protected override bool DoValidate()
        {
            foreach (var detail in DailyWorkPackageDetailList.Items)
            {
                if (detail.Employee == null)
                    throw new ValidateException("Не задан исполнитель");
            }
            return base.DoValidate();
        }
    }
}
