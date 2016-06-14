using System.Runtime.CompilerServices;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class EquipmentViewModel
    {
        private DrawingViewModel _drawing;

        public DrawingViewModel Drawing
        {
            get { return _drawing; }
            set
            {
                if (Equals(value, _drawing)) return;
                _drawing = value;
                OnPropertyChanged();
            }
        }

        protected override void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "FormCount" || propertyName == "SlotCount")
                Output = FormCount * SlotCount;
        }

        public override string ToString()
        {
            return string.Format("{0} (форм {1}, гнездность {2}, высота {3}", Name, FormCount, SlotCount, Height);
        }
    }
}