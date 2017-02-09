using System;

namespace Rti.Model.Repository.Interfaces
{
    public interface ISessionScope: IDisposable
    {
        
    }

    public interface ITransactionScope : IDisposable
    {
        void Commit();
        void Rollback();
    }
}