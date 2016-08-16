using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Entities
{
    public abstract class EntityViewModel<TEntity, TEntityViewModel> : BaseViewModel
        where TEntityViewModel : EntityViewModel<TEntity, TEntityViewModel>
        where TEntity : class, IIdentifiedEntity, new()
    {
        private bool _isNewEntity;
        private bool _isChanged;
        private bool _isValid;
        private string _validationErrorMessage;

        protected bool SuppressIsChanged;

        public bool IsMapping { get; protected set; }

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

        public bool IsSaved
        {
            get { return !IsChanged && !IsNewEntity; }
        }

        protected EntityViewModel() : this(null, null) { }

        protected EntityViewModel(TEntity entity, IRepositoryFactory repositoryFactory)
            : base(repositoryFactory)
        {
            SuppressIsChanged = true;
            try
            {
                if (entity == null)
                {
                    IsNewEntity = true;
                }
                Entity = entity ?? new TEntity();
                MapPropertiesFromEntity();
            }
            finally
            {
                SuppressIsChanged = false;
            }
        }

        public void SaveEntity()
        {
            SuppressIsChanged = true;
            try
            {
                Validate();
                MapPropertiesToEntity();
                DoSave();
                AfterSave();
                MapPropertiesFromEntity();
            }
            finally
            {
                SuppressIsChanged = false;
            }
        }

        public bool IsValid
        {
            get { return _isValid; }
            set
            {
                SuppressIsChanged = true;
                try
                {
                    if (value.Equals(_isValid)) return;
                    _isValid = value;
                    OnPropertyChanged("IsValid");
                }
                finally
                {
                    SuppressIsChanged = false;
                }
            }
        }

        public string ValidationErrorMessage
        {
            get { return _validationErrorMessage; }
            set
            {
                SuppressIsChanged = true;
                try
                {
                    if (value == _validationErrorMessage) return;
                    _validationErrorMessage = value;
                    OnPropertyChanged("ValidationErrorMessage");
                }
                finally
                {
                    SuppressIsChanged = false;
                }
            }
        }

        public class ValidationRule
        {
            public Func<TEntityViewModel, bool> Rule { get; set; }
            public string Message { get; set; }

            public ValidationRule(Func<TEntityViewModel, bool> rule, string message)
            {
                Rule = rule;
                Message = message;
            }
        }

        protected virtual IEnumerable<ValidationRule> GetValidationRules()
        {
            return new List<ValidationRule>();
        }

        public bool Validate()
        {
            var errorMessageBuilder = new StringBuilder();
            var isValid = true;
            foreach (var validationRule in GetValidationRules())
            {
                if (!validationRule.Rule((TEntityViewModel)this))
                {
                    isValid = false;
                    errorMessageBuilder.AppendLine(validationRule.Message);
                }
            }
            ValidationErrorMessage = errorMessageBuilder.ToString();
            IsValid = isValid;
            if (!IsValid)
                throw new ValidateException(ValidationErrorMessage);
            return IsValid;
        }

        protected virtual void AfterSave()
        {
        }

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
            IsChanged = false;
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

        public void CopyTo(TEntityViewModel source)
        {
            if (source == null)
                return;
            source.CopyFrom((TEntityViewModel)this);
        }

        public virtual void CopyFrom(TEntityViewModel source)
        {

        }

        public virtual void CustomCopyFrom(TEntityViewModel source)
        {

        }

        public virtual void CustomFillXElement(XElement element)
        {
            
        }

        public virtual TEntityViewModel Clone()
        {
            throw new NotImplementedException();
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            if (!SuppressIsChanged && !IsMapping)
                IsChanged = true;
            base.OnPropertyChanged(propertyName);
        }
    }
}
