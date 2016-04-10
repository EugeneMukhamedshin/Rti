using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.ListViewModel
{
    public class ContragentListItem : EntityListItem<ContragentViewModel, Contragent>
    {
        public int SortOrder { get { return Entity.SortOrder; } }
        public string Name { get { return Entity.Name; } }
        public string Address { get { return Entity.Address; } }
        public string Director { get { return Entity.Director; } }
        public string Trustee { get { return Entity.Trustee; } }
        public string Phone { get { return Entity.Phone; } }
        public string Grounding { get { return Entity.Grounding; } }
        public string Inn { get { return Entity.Inn; } }
        public string Kpp { get { return Entity.Kpp; } }
        public string Account { get { return Entity.Account; } }
        public string CorrAccount { get { return Entity.CorrAccount; } }
        public string Okved { get { return Entity.Okved; } }
        public string Okato { get { return Entity.Okato; } }
        public string Okpo { get { return Entity.Okpo; } }
        public string Ogrn { get { return Entity.Ogrn; } }
        public string Bik { get { return Entity.Bik; } }
        public string Bank { get { return Entity.Bank; } }
        public string Email { get { return Entity.Email; } }
        public string Note { get { return Entity.Note; } }

        public ContragentListItem(ContragentViewModel entity, IMasterDetailListViewModel ownerList, IRepositoryFactory repositoryFactory)
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
            return text.ContainedIn(Name, Note);
        }
    }
}
