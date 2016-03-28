using System.Collections.Generic;
using NHibernate;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public partial class EquipmentRepository : NHibernateRepository<Rti.Model.Domain.Equipment>, IEquipmentRepository
    {
        public IList<Equipment> GetAllActive()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List());
        }
    }
}