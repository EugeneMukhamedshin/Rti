﻿using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel
{
    public class LoginViewModel: BaseViewModel, IClosable
    {
        private readonly IViewService _viewService;

        public Job Job { get; set; }

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
            Job = RepositoryFactory.GetJobRepository().GetByLogin(Login);
            if (Job == null || Job.Password != Password)
                _viewService.ShowMessage(new MessageViewModel("Ошибка", "Неправильно введенный логин или пароль", true));
            else
            {
                LoggedOn = true;
                Close(null);
            }
        }

        public bool CanClose()
        {
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}
