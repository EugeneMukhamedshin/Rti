using System;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class DriverEdit: EditEntityViewModel<DriverViewModel, Driver>
    {
        public DriverEdit(string name, DriverViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) 
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.CarModel))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана марка автомобиля"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Number))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан гос. регистрационный знак автомобиля"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано имя водителя"));
                return false;
            }
            if (String.IsNullOrEmpty(Entity.Document))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан номер водительских прав"));
                return false;
            }
            return base.DoValidate();
        }
    }
}
