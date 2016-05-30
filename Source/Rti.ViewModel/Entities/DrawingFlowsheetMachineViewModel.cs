namespace Rti.ViewModel.Entities
{
    partial class DrawingFlowsheetMachineViewModel
    {
        public string MachineInvNum { get { return Machine == null ? null : Machine.InvNumber; } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "Machine")
                OnPropertyChanged("MachineInvNum");
        }
    }
}