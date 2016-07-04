using System;
using System.Runtime.CompilerServices;
using System.Xml.Linq;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class RequestDetailViewModel
    {
        public decimal? PlanCalculationPrice { get { return Drawing == null ? null : Drawing.PlanCalculationPrice; } }
        public decimal? FactCalculationPrice { get { return Drawing == null ? null : Drawing.FactCalculationPrice; } }

        public bool EquipmentLeadTimeReadOnly
        {
            get
            {
                return Drawing != null && Drawing.Equipment != null && Drawing.Equipment.ExistanceEnum != Existance.Exist;
            }
        }

        public string FullDetailName
        {
            get { return string.Format("{0} {1}.{2}", Detail.Name, Drawing.Group.Name, Drawing.Name); }
        }

        protected override void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (IsMapping)
                return;
            if (propertyName.In("Count", "Price"))
                Sum = Count * Price;
            if (propertyName == "Drawing")
            {
                FillFromDrawing();
                OnPropertyChanged("EquipmentLeadTimeReadOnly");
                OnPropertyChanged("PlanCalculationPrice");
                OnPropertyChanged("FactCalculationPrice");
            }
        }

        public void FillFromDrawing()
        {
            Group = Drawing == null ? null : Drawing.Group;
            Detail = Drawing == null ? null : Drawing.Detail;
            Material = Drawing == null ? null : Drawing.MaterialByPassport;
            Price = Drawing == null || !Drawing.Price.HasValue ? 0 : Drawing.Price.Value;
            CalculationPrice = Drawing == null ? null : (Drawing.PlanCalculationPrice ?? Drawing.FactCalculationPrice);
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("FullDetailName", FullDetailName));
        }
    }
}
