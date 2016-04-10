using System;
using System.Runtime.CompilerServices;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class RequestDetailViewModel
    {
        public Existance? EquipmentExistanceEnum
        {
            get { return EquipmentExistance.HasValue ? (Existance)EquipmentExistance.Value : (Existance?)null; }
            set { EquipmentExistance = value.HasValue ? (int)value.Value : (int?)null; }
        }

        protected override void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            if (propertyName == "Count" || propertyName == "Price")
                Sum = Count * Price;
            base.OnPropertyChanged(propertyName);
        }
    }
}
