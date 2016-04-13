using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingEdit : EditEntityViewModel<DrawingViewModel, Drawing>
    {
        public Lazy<List<GroupViewModel>> GroupsSource { get; set; }
        public Lazy<List<DetailViewModel>> DetailsSource { get; set; }
        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }
        public Lazy<List<MeasureUnitViewModel>> MeasureUnitsSource { get; set; }
        public Lazy<List<EquipmentViewModel>> EquipmentsSource { get; set; }
        public Lazy<List<MethodViewModel>> MethodsSource { get; set; }

        public DelegateCommand OpenDrawingMeasurementEditCommand { get; set; }

        public DrawingEdit(string name, DrawingViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public override void Refresh()
        {
            base.Refresh();

            OpenDrawingMeasurementEditCommand = new DelegateCommand(
                "Изменить размеры",
                o => true,
                o => OpenDrawingMeasurementEdit());

            GroupsSource = new Lazy<List<GroupViewModel>>(() => RepositoryFactory.GetGroupRepository().GetAllActive().Select(o => new GroupViewModel(o, RepositoryFactory)).ToList());
            DetailsSource = new Lazy<List<DetailViewModel>>(() => RepositoryFactory.GetDetailRepository().GetAllActive().Select(o => new DetailViewModel(o, RepositoryFactory)).ToList());
            MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().Select(o => new MaterialViewModel(o, RepositoryFactory)).ToList());
            MeasureUnitsSource = new Lazy<List<MeasureUnitViewModel>>(() => RepositoryFactory.GetMeasureUnitRepository().GetAllActive().Select(o => new MeasureUnitViewModel(o, RepositoryFactory)).ToList());
            EquipmentsSource = new Lazy<List<EquipmentViewModel>>(() => RepositoryFactory.GetEquipmentRepository().GetAllActive().Select(o => new EquipmentViewModel(o, RepositoryFactory)).ToList());
            MethodsSource = new Lazy<List<MethodViewModel>>(() => RepositoryFactory.GetMethodRepository().GetAllActive().Select(o => new MethodViewModel(o, RepositoryFactory)).ToList());
        }

        private void OpenDrawingMeasurementEdit()
        {
            var clone = Entity.Clone();
            var viewModel = new DrawingMeasurementEdit("Задание размеров", clone, ReadOnly, ViewService,
                RepositoryFactory);
            if (ViewService.ShowViewDialog(viewModel) == true)
            {
                clone.CopyTo(Entity);
            }
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование оснастки"));
                return false;
            }
            if (Entity.Group == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана группа"));
                return false;
            }
            if (Entity.Equipment == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана оснастка"));
                return false;
            }
            return base.DoValidate();
        }
    }
}