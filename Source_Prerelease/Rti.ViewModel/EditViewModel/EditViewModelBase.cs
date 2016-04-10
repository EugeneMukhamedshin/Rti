using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class EditViewModel<TEntityViewModel, TEntity> : BaseViewModel
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel> 
        where TEntity : class, IIdentifiedEntity, new()
    {
        public EditViewModel(TEntityViewModel entity, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            Entity = Entity;
            Initialize();
            SaveCommand = new DelegateCommand("Сохранить", o => true, o => Entity.SaveEntity());
        }

        private void Initialize()
        {
            OnInitialize();
        }

        protected virtual void OnInitialize() { }

        public TEntityViewModel Entity { get; set; }
        public DelegateCommand SaveCommand { get; private set; }
    }
}