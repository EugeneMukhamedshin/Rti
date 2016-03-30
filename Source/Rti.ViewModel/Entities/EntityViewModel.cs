using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Entities
{
    public abstract class EntityViewModel<TEntity, TEntityViewModel> : BaseViewModel where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel>
        where TEntity: class, IIdentifiedEntity, new()
    {
        private bool _isNewEntity;
        private bool _isChanged;
        public TEntity Entity { get; private set; }

        public Boolean IsNewEntity
        {
            get { return _isNewEntity; }
            private set
            {
                _isNewEntity = value;
                OnPropertyChanged();
            }
        }

        public bool IsChanged
        {
            get { return _isChanged; }
            set
            {
                if (value.Equals(_isChanged)) return;
                _isChanged = value;
                OnPropertyChanged("IsChanged");
            }
        }

        protected EntityViewModel()
        {
            IsNewEntity = true;
            Entity = new TEntity();
            MapPropertiesFromEntity();
        } 

        protected EntityViewModel(TEntity entity, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            if (entity == null)
            {
                IsNewEntity = true;
            }
            Entity = entity ?? new TEntity();
            MapPropertiesFromEntity();
        }

        public void SaveEntity()
        {
            MapPropertiesToEntity();
            DoSave();
            AfterSave();
            MapPropertiesFromEntity();
        }

        protected virtual void AfterSave() { }

        private void DoSave()
        {
            var rep = RepositoryFactory.GetRepository<TEntity>();
            if (IsNewEntity)
            {
                rep.Insert(Entity);
                IsNewEntity = false;
            }
            else
                rep.Update(Entity);
        }

        public void DeleteEntity()
        {
            var rep = RepositoryFactory.GetRepository<TEntity>();
            rep.Delete(Entity);
        }

        protected virtual void MapPropertiesToEntity()
        {
        }

        protected virtual void MapPropertiesFromEntity()
        {
        }

        public virtual void CopyTo(TEntityViewModel target)
        {
            
        }

        public virtual TEntityViewModel Clone()
        {
            throw new NotImplementedException();
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            IsChanged = true;
            base.OnPropertyChanged(propertyName);
        }
    }
}
