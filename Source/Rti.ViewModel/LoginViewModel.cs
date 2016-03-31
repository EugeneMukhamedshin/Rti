using System;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel
{
    public class LoginViewModel: BaseViewModel, IWindowCloser
    {
        private readonly IViewService _viewService;

        public string Login { get; set; }
        public string Password { get; set; }

        public bool LoggedOn { get; private set; }

        public DelegateCommand LoginCommand { get; set; }

        public LoginViewModel(IViewService viewService, IRepositoryFactory repositoryFactory) : base(repositoryFactory)
        {
            _viewService = viewService;
            LoginCommand = new DelegateCommand(
                "Войти",
                o => true,
                o => Enter());
        }

        private void Enter()
        {
            var job = RepositoryFactory.GetJobRepository().GetByLogin(Login);
            if (job == null || job.Password != Password)
                _viewService.ShowMessage(new MessageViewModel("Ошибка", "Неправильно введенный логин или пароль", true));
            else
            {
                LoggedOn = true;
                CloseWindow(this, null);
            }
        }

        public Action<BaseViewModel, bool?> CloseWindow { get; set; }
    }
}
