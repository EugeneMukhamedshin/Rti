using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    public partial class JobViewModel {
        public bool HasFullAccess { get { return AccessTypeEnum >= AccessType.FullWithoutReports; } }
        public bool HasReportsAccess { get { return AccessTypeEnum >= AccessType.Full; } }
        public bool HasJournalsAccess { get { return AccessTypeEnum >= AccessType.OnlyJournals; } }
        public bool HasAdminAccess { get { return AccessTypeEnum == AccessType.Admin; } }
    }
}