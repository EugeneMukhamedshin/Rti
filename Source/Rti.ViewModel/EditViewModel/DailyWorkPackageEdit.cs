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

        protected override void DoSave()
        {
            base.DoSave();
            DailyWorkPackageDetailList.SaveChanges();
        }

        public override void Refresh()
        {
            base.Refresh();
            DailyWorkPackageDetailList.Refresh();

            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllActive().OrderBy(o => o.Id).Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList());
            EmployeesSource = new Lazy<List<EmployeeViewModel>>(() => RepositoryFactory.GetEmployeeRepository().GetAllActive().OrderBy(o => o.FullName).Select(o => new EmployeeViewModel(o, RepositoryFactory)).ToList());
        }

        protected override bool DoValidate()
        {
            if (Source.IsNewEntity)
            {
                var dailyWorkPackage = RepositoryFactory.GetDailyWorkPackageRepository().GetByDate(Entity.Date);
                if (dailyWorkPackage != null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", "Для данной даты уже существует дневной наряд"));
                    return false;
                }
            }
            foreach (var detail in DailyWorkPackageDetailList.Items)
            {
                if (detail.Employee == null)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан исполнитель"));
                    return false;
                }
            }
            return base.DoValidate();
        }
    }
}
