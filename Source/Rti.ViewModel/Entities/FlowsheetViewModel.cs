namespace Rti.ViewModel.Entities
{
    partial class FlowsheetViewModel
    {
        public DrawingViewModel Drawing { get; set; }

        public override void CustomCopyFrom(FlowsheetViewModel source)
        {
            base.CustomCopyFrom(source);
            Drawing = source.Drawing;
        }
    }
}