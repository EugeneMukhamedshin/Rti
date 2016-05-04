using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class DailyWorkPackageDetailList: EntityList<DailyWorkPackageDetailViewModel, DailyWorkPackageDetail>
    {
        private readonly List<DailyWorkPackageDetailViewModel> _deletedItems = new List<DailyWorkPackageDetailViewModel>(); 

        public DailyWorkPackageViewModel DailyWorkPackage { get; set; }

        public DelegateCommand AddDetailCommand { get; set; }

        public DailyWorkPackageDetailList(DailyWorkPackageViewModel dailyWorkPackage, bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            DailyWorkPackage = dailyWorkPackage;

            AddDetailCommand = new DelegateCommand(
                "Добавить строку",
                o => true,
                o => AddDetail());
        }

        private void AddDetail()
        {
            var detail = DoCreateNewEntity();
            Items.Add(detail);
            SelectedItem = detail;
        }

        protected override IEnumerable<DailyWorkPackageDetailViewModel> GetItems()
        {
            return RepositoryFactory.GetDailyWorkPackageDetailRepository().GetByDailyWorkPackageId(DailyWorkPackage.Id).Select(o => new DailyWorkPackageDetailViewModel(o, RepositoryFactory));
        }

        protected override DailyWorkPackageDetailViewModel DoCreateNewEntity()
        {
            return new DailyWorkPackageDetailViewModel(null, RepositoryFactory)
            {
                DailyWorkPackage = DailyWorkPackage,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(DailyWorkPackageDetailViewModel entity)
        {
            _deletedItems.Add(entity);
        }
         public void SaveChanges()         {             foreach (var deletedItem in _deletedItems)             {                 deletedItem.DeleteEntity();             }             _deletedItems.Clear();             foreach (var item in Items)             {                 if (item.IsChanged || item.IsNewEntity)                     item.SaveEntity();             }         } 
        protected override bool AcceptFind(DailyWorkPackageDetailViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.BatchNumber, entity.Note) ||
                   entity.Drawing != null &&
                   (searchText.ContainedIn(entity.Drawing.Name) ||
                    entity.Drawing.Entity != null && searchText.ContainedIn(entity.Drawing.Detail.Name) ||
                    entity.Drawing.Group != null && searchText.ContainedIn(entity.Drawing.Group.Name) ||
                    entity.Drawing.Material != null && searchText.ContainedIn(entity.Drawing.Material.Name)) ||
                    entity.Employee != null && searchText.ContainedIn(entity.Employee.FullName);
        }
    }
}
