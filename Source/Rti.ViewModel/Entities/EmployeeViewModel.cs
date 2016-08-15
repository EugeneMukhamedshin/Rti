namespace Rti.ViewModel.Entities
{
    public partial class EmployeeViewModel
    {
        public string JobName { get { return Job == null ? null : Job.Name; } }
    }
}