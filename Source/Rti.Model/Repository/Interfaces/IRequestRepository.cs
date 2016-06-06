using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IRequestRepository
    {
        int GetNewRequestNumber();
        Request GetByNumber(int number);
        IList<Request> GetUnshipped();
    }
}