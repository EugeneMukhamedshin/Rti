using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class MaterialListItem : EntityListItem<MaterialViewModel, Material>
    {
        public int SortOrder { get { return Entity.SortOrder; } }

        public string Name { get { return Entity.Name; } set { Entity.Name = value; }}

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
            return text.ContainedIn(Entity.Name, Entity.Note, Entity.TechConditions);
        }

        public MaterialListItem(MaterialViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory) : base(entity, null, ownerList, repositoryFactory)
        {
        }
    }
}