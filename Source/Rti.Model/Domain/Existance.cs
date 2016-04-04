using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace Rti.Model.Domain
{
    public enum Existance
    {
        Exist,
        NotExist,
        InMaintenance,
        Lost,
        InProduction
    }
}
