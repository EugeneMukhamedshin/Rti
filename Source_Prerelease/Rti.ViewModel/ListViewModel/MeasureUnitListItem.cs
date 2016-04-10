using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class MeasureUnitListItem : EntityListItem<MeasureUnitViewModel, MeasureUnit>
    {
        public int SortOrder { get { return Entity.SortOrder; } }
        public string Name { get { return Entity.Name; } }
        public string Code { get { return Entity.Code; } }

        public MeasureUnitListItem(MeasureUnitViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
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
            return text.ContainedIn(Name, Code);
        }
    }
}
