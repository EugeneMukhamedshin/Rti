using System.Collections;
using System.Collections.Generic;
using System.Reflection.Emit;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IAdditionalInfoRepository : IRepository<Rti.Model.Domain.AdditionalInfo>
    {
        IList<AdditionalInfo> GetAllActive();
    }
}