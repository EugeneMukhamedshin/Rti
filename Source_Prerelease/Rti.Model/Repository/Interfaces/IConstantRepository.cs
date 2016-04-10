using Rti.Model.Domain;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IConstantRepository : IRepository<Constant>
    {
        Constant GetActual();
    }
}