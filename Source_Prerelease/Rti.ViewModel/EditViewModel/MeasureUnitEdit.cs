using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class MeasureUnitEdit: EditEntityViewModel<MeasureUnitViewModel, MeasureUnit>
    {
        public MeasureUnitEdit(string name, MeasureUnitViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование единицы измерения"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Code))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан код единицы измерения"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
