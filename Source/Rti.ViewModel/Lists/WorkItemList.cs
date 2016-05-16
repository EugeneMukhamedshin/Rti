using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class WorkItemList: EntityList<WorkItemViewModel, WorkItem>
    {
        private readonly List<WorkItemViewModel> _deletedItems = new List<WorkItemViewModel>();
        private DateTime _date;

        public DateTime Date
        {
            get { return _date; }
            set
            {
                if (value.Equals(_date)) return;
                _date = value;
                OnPropertyChanged();
                Refresh();
            }
        }

        public DelegateCommand AddWorkItemCommand { get; set; }

        public WorkItemList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            Date = DateTime.Today;
            AddWorkItemCommand = new DelegateCommand(
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

        protected override IEnumerable<WorkItemViewModel> GetItems()
        {
            return RepositoryFactory.GetWorkItemRepository().GetByDate(Date).Select(o => new WorkItemViewModel(o, RepositoryFactory));
        }

        protected override WorkItemViewModel DoCreateNewEntity()
        {
            return new WorkItemViewModel(null, RepositoryFactory)
            {
                WorkDate = Date,
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(WorkItemViewModel entity)
        {
            _deletedItems.Add(entity);
        }
         public void SaveChanges()         {             foreach (var deletedItem in _deletedItems)             {                 deletedItem.DeleteEntity();             }             _deletedItems.Clear();             foreach (var item in Items)             {                 if (item.IsChanged || item.IsNewEntity)                     item.SaveEntity();             }         } 
        protected override bool AcceptFind(WorkItemViewModel entity, string searchText)
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
