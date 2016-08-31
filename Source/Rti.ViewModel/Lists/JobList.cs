using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.EditViewModel;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public class JobList : EntityList<JobViewModel, Job>
    {
        public JobList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(editMode, viewService, repositoryFactory)
        {
            TypeMaps.Add(new Tuple<Type, Type>(typeof(JobViewModel), typeof(JobEdit)));
        }

        protected override IEnumerable<JobViewModel> GetItems()
        {
            return
                RepositoryFactory.GetJobRepository()
                    .GetAllActive()
                    .Select(m => new JobViewModel(m, RepositoryFactory));
        }

        protected override JobViewModel DoCreateNewEntity()
        {
            return new JobViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(item => item.SortOrder) + 1 : 1
            };
        }

        protected override void DoDeleteEntity(JobViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(JobViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Login);
        }
    }
}