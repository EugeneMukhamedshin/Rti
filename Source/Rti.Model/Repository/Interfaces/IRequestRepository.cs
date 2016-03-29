namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestRepository : IRepository<Domain.Request> {
        int GetNewRequestNumber();
    }
}