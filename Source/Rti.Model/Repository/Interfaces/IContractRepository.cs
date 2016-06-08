using System;

namespace Rti.Model.Repository.Interfaces
{
    public partial interface IContractRepository
    {
        int GetNextNumber(DateTime regDate);
    }
}