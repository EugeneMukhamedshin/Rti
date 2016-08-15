<<<<<<< HEAD
﻿using System.Xml.Linq;
=======
using System.Xml.Linq;
>>>>>>> origin/develop
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class ContragentViewModel
    {
        public bool IsManufacturer { get { return ContragentTypeEnum == ContragentType.Manufacturer; } }

        public string FullName
        {
            get { return string.Format("{0}, ИНН {1}, КПП {2}, {3}, тел. {4}", Name, Inn, Kpp, Address, Phone); }
        }

        public string BankRequisites
        {
            get { return string.Format("р/с {0} в {1}, к/с {2}, БИК {3}", Account, Bank, CorrAccount, Bik); }
        }

        public string BankRequisites
        {
            get { return string.Format("�/� {0} � {1}, �/� {2}, ��� {3}", Account, Bank, CorrAccount, Bik); }
        }

        public string FullNameWithBankRequisites
        {
            get { return string.Format("{0}, ИНН {1}, КПП {2}, {3}, тел. {4}, БИК {5}, {6}, Корр. сч. {7}, Сч № {8}", Name, Inn, Kpp, Address, Phone, Bik, Bank, CorrAccount, Account); }
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