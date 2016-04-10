using System;
using System.Net.NetworkInformation;

namespace Rti.Model.Domain.Authorization
{
    public class UserSession
    {
        private static UserSession _currentSession;
        public static UserSession CurrentSession
        {
            get { return _currentSession ?? (_currentSession = new UserSession()); }
        }

        public User User { get; set; }

        public Boolean IsOpened { get; set; }
        public String UserDisplayName { get; set; }

        private UserSession()
        {
            IsOpened = false;
        }

        public void Open(IRepositoryFactory repositoryFactory, String domainName = null, String userName = null)
        {
            if (IsOpened)
                throw new InvalidOperationException("Пользовательскую сессию можно открыть только один раз");

            //using (var context = new PrincipalContext(ContextType.Domain))
            //{
            //    var principal = UserPrincipal.FindByIdentity(context, User.Identity.Name);
            //    var firstName = principal.GivenName;
            //    var lastName = principal.Surname;
            //}

            var userPrincipal = UserPrincipal.Current;
            UserDisplayName = String.Format("{0}{1}", userPrincipal.Surname, userPrincipal.GivenName == null ? null : " " + userPrincipal.GivenName.Substring(0, 1));

            var domain = domainName ?? IPGlobalProperties.GetIPGlobalProperties().DomainName;
            var user = userName ?? Environment.UserName;
            User = repositoryFactory.GetUserRepository().GetByDomainCredentials(domain, user);
            if (User == null)
            {
                User = new User { Domain = domain, Login = user, IsAdmin = false };
                repositoryFactory.GetUserRepository().Insert(User);
            }
            IsOpened = true;
        }
    }
}