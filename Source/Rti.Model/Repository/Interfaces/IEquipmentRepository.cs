using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IEquipmentRepository : IRepository<Rti.Model.Domain.Equipment>
    {
        IList<Equipment> GetAllActive();
    }
}