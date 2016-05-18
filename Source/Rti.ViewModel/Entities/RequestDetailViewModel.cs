using System;
using System.Runtime.CompilerServices;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class RequestDetailViewModel
    {
        public bool EquipmentLeadTimeReadOnly
        {
            get
            {
                return Drawing != null && Drawing.Equipment != null && Drawing.Equipment.ExistanceEnum != Existance.Exist;
            }
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
                Group = Drawing == null ? null : Drawing.Group;
                Detail = Drawing == null ? null : Drawing.Detail;
                Material = Drawing == null ? null : Drawing.MaterialByPassport;
                Price = Drawing == null || !Drawing.Price.HasValue ? 0 : Drawing.Price.Value;
                CalculationPrice = Drawing == null || Drawing.PlanCalculation == null ? null : Drawing.PlanCalculation.Summary;
                OnPropertyChanged("EquipmentLeadTimeReadOnly");
            }
        }
    }
}
