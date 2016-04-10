using System.Runtime.CompilerServices;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class EquipmentViewModel
    {
        public Existance ExistanceEnum
        {
            get { return (Existance)Existance; }
            set { Existance = (int) value; }
        }

        protected override void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            if (propertyName == "FormCount" || propertyName == "SlotCount")
                Output = FormCount * SlotCount;
            base.OnPropertyChanged(propertyName);
        }
    }
}