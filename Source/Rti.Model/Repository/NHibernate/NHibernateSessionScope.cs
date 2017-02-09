using System;
using NHibernate;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public class NHibernateSessionScope : ISessionScope
    {
        private static ISession _session;
        private static object SyncObject = new object();

        public static ISession Session
        {
            get { return _session; }
        }

        public NHibernateSessionScope()
        {
            lock (SyncObject)
            {
                if (_session != null)
                    throw new InvalidOperationException("Существует открытая сессия");
                _session = new NHibernateContext().SessionFactory.OpenSession();
            }
        }

        public void Dispose()
        {
            _session.Dispose();
            lock (SyncObject)
                _session = null;
        }
    }
}