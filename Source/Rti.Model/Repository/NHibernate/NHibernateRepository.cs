using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using log4net;
using log4net.Util;
using NHibernate;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.Model.Repository.NHibernate
{
    public class NHibernateRepository
    {
        private readonly ILog _log = LogManager.GetLogger(typeof(NHibernateRepository));

        protected TResult ExecuteFuncOnSession<TResult>(Func<ISession, TResult> func, String description = null)
        {
            try
            {
                if (NHibernateSessionScope.Session != null)
                {
                    return func(NHibernateSessionScope.Session);
                }
                using (var session = new NHibernateContext().SessionFactory.OpenSession())
                {
                    using (var transaction = session.BeginTransaction())
                    {
                        try
                        {
                            var result = func(session);
                            transaction.Commit();
                            return result;
                        }
                        catch
                        {
                            transaction.Rollback();
                            throw;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _log.ErrorExt($"{description}: Ошибка при выполнении запроса", ex);
                throw;
            }
        }

        protected void ExecuteActionOnSession(Action<ISession> action, string description)
        {
            try
            {
                if (NHibernateSessionScope.Session != null)
                {
                    action(NHibernateSessionScope.Session);
                    return;
                }
                using (var session = new NHibernateContext().SessionFactory.OpenSession())
                {
                    using (var transaction = session.BeginTransaction())
                    {
                        try
                        {
                            action(session);
                            transaction.Commit();
                        }
                        catch
                        {
                            transaction.Rollback();
                            throw;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _log.ErrorExt($"{description}: Ошибка при выполнении запроса", ex);
                throw;
            }
        }
    }

    public class NHibernateRepository<TEntity> : NHibernateRepository, IRepository<TEntity> where TEntity : class, IIdentifiedEntity
    {
        private readonly ILog _log = LogManager.GetLogger(typeof (NHibernateRepository<TEntity>));

        public void Insert(TEntity entity)
        {
            ExecuteFuncOnSession(session => session.Save(entity), String.Format("Insert {0}", typeof (TEntity).Name));
        }

        public void Update(TEntity entity)
        {
            ExecuteActionOnSession(session => session.Update(entity),
                $"Update {typeof(TEntity).Name}");
        }

        public virtual void Delete(TEntity entity)
        {
            ExecuteActionOnSession(session => session.Delete(entity),
                $"Delete {typeof(TEntity).Name}");
        }

        public virtual IEnumerable<TEntity> GetAll()
        {
            return ExecuteFuncOnQueryOver(query => query.List(), null,
                $"Read all {typeof(TEntity).Name}");
        }

        public TEntity GetById(int id)
        {
            return ExecuteFuncOnQueryOver(
                query => query.Where(entity => entity.Id == id).SingleOrDefault(),
                null,
                $"Read one {typeof(TEntity)} by Id=[{id}]");
        }

        protected virtual IQueryOver<TEntity, TEntity> GetDefaultQueryOver(IQueryOver<TEntity, TEntity> queryOver)
        {
            return queryOver;
        }

        public TResult ExecuteFuncOnQueryOver<TResult>(Func<IQueryOver<TEntity, TEntity>, TResult> func, IEnumerable<Expression<Func<TEntity, object>>> expressions = null, String description = null)
        {
            try
            {
                var deleg = new Func<ISession, TResult>(session =>
                {
                    var dbSet = session.QueryOver<TEntity>();
                    if (expressions == null)
                        dbSet = GetDefaultQueryOver(dbSet);
                    else
                    {
                        foreach (var expression in expressions)
                        {
                            dbSet = dbSet.Fetch(expression).Default;
                        }
                    }
                    var result = func(dbSet);
                    return result;
                });
                if (NHibernateSessionScope.Session != null)
                {
                    return deleg(NHibernateSessionScope.Session);
                }
                using (var session = new NHibernateContext().SessionFactory.OpenSession())
                {
                    return deleg(session);
                }
            }
            catch (Exception ex)
            {
                _log.ErrorExt($"{description}: Ошибка при выполнении запроса", ex);
                throw;
            }
        }
    }
}
