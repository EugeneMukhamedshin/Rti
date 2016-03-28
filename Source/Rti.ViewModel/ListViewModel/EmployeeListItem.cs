using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class EmployeeListItem : EntityListItem<EmployeeViewModel, Employee>
    {
        public int SortOrder { get { return Entity.SortOrder; } }
        public string Name { get { return Entity.FullName; } }
        public string Code { get { return Entity.Code; } }
        public string Job { get { return Entity.Job == null ? null : Entity.Job.Name; } }
        public string Login { get { return Entity.Job == null ? null : Entity.Job.Login; } }

        public EmployeeListItem(EmployeeViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
            : base(entity, null, ownerList, repositoryFactory)
        {
        }

        protected override double DoGetSortOrder()
        {
            return Entity.SortOrder;
        }

        public override bool Delete()
        {
            Entity.IsDeleted = true;
            Entity.SaveEntity();
            return true;
        }

        public override bool AcceptFind(string text)
        {
            return text.ContainedIn(Name, Code, Job, Login);
        }
    }
}
