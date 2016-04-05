using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class RequestDetailViewModel
    {
        public Existance? EquipmentExistanceEnum
        {
            get{return EquipmentExistance.HasValue ? (Existance)EquipmentExistance.Value : (Existance?)null;}
            set { EquipmentExistance = value.HasValue ? (int)value.Value : (int?)null; }
        }
    }
}
