using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDetailRepository : IRepository<Detail> 
    {
        IList<Detail> GetAllActive();
    }
}