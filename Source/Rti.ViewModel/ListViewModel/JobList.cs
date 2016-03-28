using System;
using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Commands;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class JobList : MasterDetailListViewModel<JobListItem>
    {
        public JobList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory, HistoryContext historyContext = null)
            : base(editMode, viewService, repositoryFactory, historyContext)
        {
            TypeMaps.Add(new Tuple<Type, Type, Type>(typeof(JobListItem), typeof(JobViewModel), typeof(JobEdit)));
        }

        protected override MasterDetailListItemViewModel DoCreateItem(Type itemType, ref MasterDetailListItemViewModel parentItem, int index,
            object param)
        {
            parentItem = null;
            var newEntity = new JobViewModel(null, RepositoryFactory)
            {
                SortOrder = RootItems.Any() ? RootItems.Cast<JobListItem>().Max(item => item.SortOrder) + 1 : 1
            };
            return OpenViewModelEditWindow<JobListItem, JobViewModel, Job>(newEntity,
                "Добавление должности", false)
                ? new JobListItem(newEntity, this, RepositoryFactory)
                : null;
        }

        protected override bool DoEditItem(MasterDetailListItemViewModel item, bool editMode)
        {
            OpenViewModelEditWindow<JobListItem, JobViewModel, Job>(((JobListItem)item).Entity, "Редактирование должности", !editMode);
            return true;
        }

        public override void Refresh()
        {
            RootItems =
                new ObservableCollection<MasterDetailListItemViewModel>(
                    RepositoryFactory.GetJobRepository()
                        .GetAllActive()
                        .Select(
                            m =>
                                new JobListItem(new JobViewModel(m, RepositoryFactory), this, RepositoryFactory)));
        }
    }
}