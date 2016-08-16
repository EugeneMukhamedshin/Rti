using System.Xml.Linq;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class CalculationViewModel
    {
        public bool IsReadOnly { get; set; }

        public CalculationType CalcType { get; set; }

        public string DisplayName
        {
            get
            {
                switch (CalcType)
                {
                    case CalculationType.Fact:
                        return "Фактическая";
                    case CalculationType.Plan:
                        return "Плановая";
                    case CalculationType.History:
                        return string.Format("{0:dd.MM.yyyy}", CreatedDate);
                    default:
                        return null;
                }
            }
        }

        public decimal? AllMaterials
        {
            get
            {
                return (MainMaterial ?? 0) + (Rubber ?? 0) + (Clue ?? 0) + (Armature ?? 0) + (Sand ?? 0) + (Textile ?? 0) + (OtherMaterial ?? 0);
            }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("MainMaterial", "Rubber", "Clue", "Armature", "Sand", "Textile", "OtherMaterial"))
                OnPropertyChanged("AllMaterials");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("AllMaterials", AllMaterials ?? 0));
        }
    }
}