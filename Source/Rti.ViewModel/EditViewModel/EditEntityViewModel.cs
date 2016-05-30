using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class EditEntityViewModel<TEntityViewModel, TEntity> : EditViewModel<TEntityViewModel>
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel> 
        where TEntity : class, IIdentifiedEntity, new()
    {
        public TEntityViewModel Source { get; set; }

        public EditEntityViewModel(string name, TEntityViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity.Clone(), readOnly, viewService, repositoryFactory)
        {
            Source = entity;
        }

        protected override void DoSave()
        {
            base.DoSave();
            Entity.CopyTo(Source);
            Source.SaveEntity();
        }
    }
}