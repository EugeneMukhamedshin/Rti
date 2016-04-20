using System.Runtime.CompilerServices;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class EquipmentViewModel
    {
        protected override void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "FormCount" || propertyName == "SlotCount")
                Output = FormCount * SlotCount;
        }
    }
}