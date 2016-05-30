using System.Xml.Linq;

namespace Rti.ViewModel.Entities
{
    partial class ContragentViewModel
    {
        public string FullName
        {
            get { return string.Format("{0}, ��� {1}, ��� {2}, {3}, ���. {4}", Name, Inn, Kpp, Address, Phone); }
        }

        public string FullNameWithBankRequisites
        {
            get { return string.Format("{0}, ��� {1}, ��� {2}, {3}, ���. {4}, ��� {5}, {6}, ����. ��. {7}, �� � {8}", Name, Inn, Kpp, Address, Phone, Bik, Bank, CorrAccount, Account); }
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("FullName", FullName));
            element.Add(new XAttribute("FullNameWithBankRequisites", FullNameWithBankRequisites));
        }
    }
}