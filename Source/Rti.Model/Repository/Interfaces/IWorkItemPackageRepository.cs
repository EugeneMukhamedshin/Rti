using System;
using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IWorkItemPackageRepository : IRepository<Rti.Model.Domain.WorkItemPackage> {
        WorkItemPackage GetByDate(DateTime date);
    }
}