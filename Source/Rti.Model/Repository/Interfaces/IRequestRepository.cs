using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestRepository : IRepository<Request> {
        int GetNewRequestNumber();
    }
}