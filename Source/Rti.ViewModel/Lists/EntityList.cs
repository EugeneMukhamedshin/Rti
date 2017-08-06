using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Lists
{
    public abstract class EntityList<TEntityViewModel, TEntity> : ObjectList<TEntityViewModel>
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel> where TEntity : class, IIdentifiedEntity, new()
    {
        public EntityList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory) { }
    }
}
