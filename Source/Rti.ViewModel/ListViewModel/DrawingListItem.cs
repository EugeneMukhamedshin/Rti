using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class DrawingListItem : EntityListItem<DrawingViewModel, Drawing>
    {
        public string Name { get { return Entity.Name; } }

        public DrawingListItem(DrawingViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
            : base(entity, null, ownerList, repositoryFactory)
        {
        }

        protected override double DoGetSortOrder()
        {
            return Entity.Id;
        }

        public override bool Delete()
        {
            Entity.DeleteEntity();
            return true;
        }

        public override bool AcceptFind(string text)
        {
            return text.ContainedIn(Name);
        }
    }
}
