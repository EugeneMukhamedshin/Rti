<<<<<<< HEAD
﻿using System.Xml.Linq;
=======
using System.Xml.Linq;
>>>>>>> origin/develop
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    public partial class ReportOfCompletionItemViewModel
    {
<<<<<<< HEAD
        public string Representation { get { return string.Format("{0} в количестве {1} шт.", GetEquipmentTypeString(), Count); } }
=======
        public string Representation { get { return string.Format("{0} � ���������� {1} ��.", GetEquipmentTypeString(), Count); } }
>>>>>>> origin/develop

        private string GetEquipmentTypeString()
        {
            switch (EquipmentTypeEnum)
            {
                case EquipmentType.PressForm:
<<<<<<< HEAD
                    return "Прессформа";
                case EquipmentType.Proboinik:
                    return "Пробойник";
                case EquipmentType.Filiera:
                    return "Фильера";
                case EquipmentType.Shablon:
                    return "Шаблон";
                case EquipmentType.Shtanets:
                    return "Штанец";
=======
                    return "����������";
                case EquipmentType.Proboinik:
                    return "���������";
                case EquipmentType.Filiera:
                    return "�������";
                case EquipmentType.Shablon:
                    return "������";
                case EquipmentType.Shtanets:
                    return "������";
>>>>>>> origin/develop
                default:
                    return null;
            }
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Representation", Representation));}
    }
}