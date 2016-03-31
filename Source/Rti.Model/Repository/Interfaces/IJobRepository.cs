using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IJobRepository
    {
        IList<Job> GetAllActive();
        Job GetByLogin(string login);
    }
}