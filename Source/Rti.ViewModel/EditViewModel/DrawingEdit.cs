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

        public DelegateCommand OpenMassCalculationCommand { get; set; }
        public DelegateCommand OpenEquipmentEditCommand { get; set; }
        public DelegateCommand OpenDrawingMeasurementEditCommand { get; set; }
        public DelegateCommand OpenDrawingImageCommand { get; set; }
        public DelegateCommand OpenFlowsheetCommand { get; set; }
        public DelegateCommand OpenCalculationCommand { get; set; }

        public DrawingEdit(string name, DrawingViewModel entity, bool readOnly, IViewService viewService,
            IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            OpenMassCalculationCommand = new DelegateCommand(
                "Рассчитать массу",
                o => true,
                o => OpenMassCalculationEdit());
            OpenEquipmentEditCommand = new DelegateCommand(
                "Оснастка",
                o => true,
                o => OpenEquipmentEdit());
            OpenDrawingMeasurementEditCommand = new DelegateCommand(
                "Изменить размеры",
                o => true,
                o => OpenDrawingMeasurementEdit());
            OpenDrawingImageCommand = new DelegateCommand(
                "Просмотреть",
                o => true,
                o => OpenDrawingImage());
            OpenFlowsheetCommand = new DelegateCommand(
                "Технологическая карта",
                o => true,
                o => OpenFlowsheet());
            OpenCalculationCommand = new DelegateCommand(
                "Калькуляция",
                o => true,
                o => OpenCalculation());
        }

        public override void Refresh()
        {
            base.Refresh();

            GroupsSource = new Lazy<List<GroupViewModel>>(() => RepositoryFactory.GetGroupRepository().GetAllActive().Select(o => new GroupViewModel(o, RepositoryFactory)).ToList());
            DetailsSource = new Lazy<List<DetailViewModel>>(() => RepositoryFactory.GetDetailRepository().GetAllActive().Select(o => new DetailViewModel(o, RepositoryFactory)).ToList());
            MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().Select(o => new MaterialViewModel(o, RepositoryFactory)).ToList());
            MeasureUnitsSource = new Lazy<List<MeasureUnitViewModel>>(() => RepositoryFactory.GetMeasureUnitRepository().GetAllActive().Select(o => new MeasureUnitViewModel(o, RepositoryFactory)).ToList());
            EquipmentsSource = new Lazy<List<EquipmentViewModel>>(() => RepositoryFactory.GetEquipmentRepository().GetAllActive().Select(o => new EquipmentViewModel(o, RepositoryFactory)).ToList());
            MethodsSource = new Lazy<List<MethodViewModel>>(() => RepositoryFactory.GetMethodRepository().GetAllActive().Select(o => new MethodViewModel(o, RepositoryFactory)).ToList());
        }

        protected override void DoSave()
        {
            if (Entity.DrawingImage != null)
            {
                Entity.DrawingImage.SaveEntity();
                RepositoryFactory.GetImageRepository().SaveData(Entity.DrawingImage.Id, Entity.DrawingImage.Data);
            }
            base.DoSave();
        }

        private void OpenMassCalculationEdit()
        {
            var massCalculation = Entity.MassCalculation ?? new MassCalculationViewModel(null, RepositoryFactory)
            {
                MaterialDensity = Entity.MaterialByPassport != null ? Entity.MaterialByPassport.Density : null
            };
            var editor = new MassCalculationEdit("Расчет массы", massCalculation, ReadOnly, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(editor) == true)
            {
                if (Entity.MassCalculation == null)
                    Entity.MassCalculation = massCalculation;
            }
        }

        private void OpenEquipmentEdit()
        {
            var equipment = Entity.Equipment ?? new EquipmentViewModel(null, RepositoryFactory)
            {
                SortOrder = RepositoryFactory.GetEquipmentRepository().GetNextSortOrder()
            };
            var editor = new EquipmentEdit("Оснастка", equipment, ReadOnly, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(editor) == true)
            {
                if (Entity.Equipment == null)
                    Entity.Equipment = equipment;
            }
        }

        private void OpenDrawingMeasurementEdit()
        {
            var viewModel = new DrawingMeasurementEdit("Задание размеров", Entity, ReadOnly, ViewService,
                RepositoryFactory);
            ViewService.ShowViewDialog(viewModel);
        }

        private void OpenDrawingImage()
        {
            var imageData = new byte[] { };
            if (Entity.DrawingImage != null)
                imageData = Entity.DrawingImage.Data ?? RepositoryFactory.GetImageRepository().GetData(Entity.DrawingImage.Id);

            var viewModel = new ImageEdit("Просмотр чертежа", imageData, ReadOnly, ViewService, RepositoryFactory);
            viewModel.Refresh();
            if (ViewService.ShowViewDialog(viewModel) == true)
            {
                if (Entity.DrawingImage == null)
                {
                    var image = new ImageViewModel(null, RepositoryFactory);
                    Entity.DrawingImage = image;
                }
                Entity.DrawingImage.Data = viewModel.Entity.Data;
            }
        }

        private void OpenFlowsheet()
        {
            var saved = !Entity.IsChanged;
            if (!saved && ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед открытием необходимо сохранить чертеж. Выполнить сохранение?")))
                saved = Save();
            if (saved)
            {
                var viewModel = new DrawingFlowsheetEdit("Технологическая карта", Source, ReadOnly, ViewService, RepositoryFactory);
                viewModel.Refresh();
                ViewService.ShowViewDialog(viewModel);
            }
        }

        private void OpenCalculation()
        {
            if (Entity.PlanCalculation == null)
                Entity.PlanCalculation = new CalculationViewModel(null, RepositoryFactory);
            if (Entity.FactCalculation == null)
                Entity.FactCalculation = new CalculationViewModel(null, RepositoryFactory);
            Entity.PlanCalculation.IsReadOnly = true;
            var saved = !Entity.IsChanged;
            if (!saved && ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед открытием необходимо сохранить чертеж. Выполнить сохранение?")))
                saved = Save();
            if (saved)
            {
                var calculationEdit = new DrawingCalculationEdit("Калькуляция", Source, ReadOnly, ViewService, RepositoryFactory);
                if (ViewService.ShowViewDialog(calculationEdit) == true)
                {
                    Source.RaiseCalculationPriceChanged();
                }
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