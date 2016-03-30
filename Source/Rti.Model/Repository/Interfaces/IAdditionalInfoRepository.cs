using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IAdditionalInfoRepository
    {
        IList<AdditionalInfo> GetAllActive();
    }
}