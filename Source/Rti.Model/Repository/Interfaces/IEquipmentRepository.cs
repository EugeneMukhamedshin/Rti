using System;
using System.Collections.Generic;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IEquipmentRepository : IRepository<Equipment>
    {
        IList<Equipment> GetAllActive();
        int GetNextSortOrder();
        IList<Tuple<Equipment, Drawing>> GetAllActiveWithDrawings();
    }
}