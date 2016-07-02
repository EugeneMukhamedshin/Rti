using System.Xml.Linq;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class ContragentViewModel
    {
        public bool IsManufacturer { get { return ContragentTypeEnum == ContragentType.Manufacturer; } }

        public string FullName
        {
            get { return string.Format("{0}, ÈÍÍ {1}, ÊÏÏ {2}, {3}, òåë. {4}", Name, Inn, Kpp, Address, Phone); }
        }

        public string BankRequisites
        {
            get { return string.Format("ğ/ñ {0} â {1}, ê/ñ {2}, ÁÈÊ {3}", Account, Bank, CorrAccount, Bik); }
        }

        public string FullNameWithBankRequisites
        {
            get { return string.Format("{0}, ÈÍÍ {1}, ÊÏÏ {2}, {3}, òåë. {4}, ÁÈÊ {5}, {6}, Êîğğ. ñ÷. {7}, Ñ÷ ¹ {8}", Name, Inn, Kpp, Address, Phone, Bik, Bank, CorrAccount, Account); }
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("FullName", FullName));
            element.Add(new XAttribute("FullNameWithBankRequisites", FullNameWithBankRequisites));
            element.Add(new XAttribute("BankRequisites", BankRequisites));
        }
    }
}