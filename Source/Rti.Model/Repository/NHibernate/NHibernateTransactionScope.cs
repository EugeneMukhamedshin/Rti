using System;
using NHibernate;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public class NHibernateTransactionScope: ITransactionScope
    {
        private static ITransaction _transaction;
        private static readonly object SyncObject = new object();

        public static ITransaction Transaction
        {
            get { return _transaction; }
        }

        public NHibernateTransactionScope()
        {
            lock (SyncObject)
            {
                if (_transaction != null)
                    throw new InvalidOperationException("Существует запущенная транзакция");
                if (NHibernateSessionScope.Session == null)
                    throw new InvalidOperationException("Нет открытой сессии");
                _transaction = NHibernateSessionScope.Session.BeginTransaction();
            }
        }

        public void Commit()
        {
            _transaction.Commit();
        }

        public void Rollback()
        {
            _transaction.Rollback();
        }
        public void Dispose()
        {
            _transaction.Dispose();
            lock (SyncObject)
                _transaction = null;
        }
    }
}