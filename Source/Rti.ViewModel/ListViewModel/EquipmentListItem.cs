using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class EquipmentListItem : EntityListItem<EquipmentViewModel, Equipment>
    {
        public int SortOrder { get { return Entity.SortOrder; } }
        public string GroupName { get { return Entity.Group == null ? null : Entity.Group.Name; } }
        public string DrawingName { get { return Entity.Drawing == null ? null : Entity.Drawing.Name; } }

        public string Existance
        {
            get
            {
                return (Existance) Entity.Existance == Model.Domain.Existance.Exist
                    ? "В работе"
                    : (Existance) Entity.Existance == Model.Domain.Existance.InMaintenance
                        ? "В ремонте"
                        : (Existance) Entity.Existance == Model.Domain.Existance.Lost ? "Утрата" : "Неизвестно";
            }
        }

        public string Name { get { return Entity.Name; } }
        public int? FormCount { get { return Entity.FormCount; } }
        public int? SlotCount { get { return Entity.SlotCount; } }
        public int? Output { get { return Entity.Output; } }

        public EquipmentListItem(EquipmentViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
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
            return text.ContainedIn(Name, GroupName, DrawingName);
        }
    }
}
