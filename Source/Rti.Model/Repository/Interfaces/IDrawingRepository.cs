using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IDrawingRepository
    {
        IList<Drawing> GetAllActive(IEnumerable<Expression<Func<Drawing, object>>> expressions = null);

        IList<Drawing> GetPage(int page, int pageSize, string filter, IEnumerable<Expression<Func<Drawing, object>>> expressions = null);

        int GetNextSortOrder();
        IList<Drawing> GetUnpaidEquipments();
        IList<Drawing> GetAllInWork();
    }
}