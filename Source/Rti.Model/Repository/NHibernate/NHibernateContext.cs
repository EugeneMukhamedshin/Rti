using System;
using System.Configuration;
using FluentNHibernate.Cfg;
using FluentNHibernate.Cfg.Db;
using log4net;
using log4net.Util;
using NHibernate;

namespace Rti.Model.Repository.NHibernate
{
    public class NHibernateContext
    {
        private static ILog _log = LogManager.GetLogger(typeof(NHibernateContext));

        private static ISessionFactory _sessionFactory;

        public ISessionFactory SessionFactory
        {
            get
            {
                if (_sessionFactory == null)
                    InitializeSessionFactory();
                return _sessionFactory;
            }
        }

        private static void InitializeSessionFactory()
        {
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["Default"].ConnectionString;
                _log.InfoFormat("Creating session factory. Connection string = {0}", connectionString);
                _sessionFactory = Fluently.Configure()
                    .Database(
                        MySQLConfiguration.Standard.ConnectionString(connectionString)
                            //.ShowSql()
                    )
                    .Mappings(
                        m =>
                            m.FluentMappings.AddFromAssemblyOf<NHibernateContext>()
                    //.Conventions.AddFromAssemblyOf<NHibernateContext>()
                    )
                    //.ExposeConfiguration(cfg => new SchemaExport(cfg).SetOutputFile("schema.sql").Execute(true, true, false))
                    .BuildSessionFactory();
            }
            catch (Exception ex)
            {
                _log.ErrorExt("Error while creating session factory", ex);
                throw;
            }
        }
    }
}
