<<<<<<< HEAD
﻿using System;
=======
using System;
>>>>>>> origin/develop
using System.Collections.Generic;
using System.Linq;
using NHibernate.Criterion;
using NHibernate.Linq;
using Rti.Model.Domain;

namespace Rti.Model.Repository.NHibernate
{
    public partial class EquipmentRepository
    {
        public IList<Equipment> GetAllActive()
        {
            return ExecuteFuncOnQueryOver(q => q.Where(o => !o.IsDeleted).List());
        }

        public IList<Tuple<Equipment, Drawing>> GetAllActiveWithDrawings()
        {
            return ExecuteFuncOnSession(s =>
            {
                var result =
                from equipment in s.Query<Equipment>()
                join drawing in s.Query<Drawing>()
                    on equipment.Id equals drawing.Equipment.Id
                join drawingGroup in s.Query<Group>() on drawing.Group.Id equals drawingGroup.Id
                where !equipment.IsDeleted && !drawing.IsDeleted
                select new Tuple<Equipment, Drawing>(equipment, drawing);
                return result.ToList();
            }, "");
        }

        public int GetNextSortOrder()
        {
            var maxSortOrder = ExecuteFuncOnQueryOver(q => q.Select(Projections.Max<Equipment>(o => o.SortOrder)).SingleOrDefault<int?>());
            return maxSortOrder + 1 ?? 1;
        }
    }
}