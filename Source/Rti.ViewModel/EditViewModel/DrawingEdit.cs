﻿using System;
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
        public DelegateCommand OpenDrawingMeasurementEditCommand { get; set; }
        public DelegateCommand OpenDrawingImageCommand { get; set; }
        public DelegateCommand OpenFlowsheetCommand { get; set; }

        public DrawingEdit(string name, DrawingViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            OpenMassCalculationCommand = new DelegateCommand(
                "Рассчитать массу",
                o => true,
                o => OpenMassCalculationEdit());
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

        protected override void DoInternalSave()
        {
            base.DoInternalSave();
            Entity.DrawingImage.SaveEntity();
            RepositoryFactory.GetImageRepository().SaveData(Entity.DrawingImage.Id, Entity.DrawingImage.Data);
        }

        private void OpenMassCalculationEdit()
        {
            var massCalculation = Entity.MassCalculation == null
                ? new MassCalculationViewModel(null, RepositoryFactory)
                : Entity.MassCalculation.Clone();
            var editor = new MassCalculationEdit("Расчет массы", massCalculation, ReadOnly, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(editor) == true)
            {
                if (Entity.MassCalculation == null)
                    Entity.MassCalculation = massCalculation;
                else
                    massCalculation.CopyTo(Entity.MassCalculation);
                Entity.MassCalculation.SaveEntity();
            }
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

        private void OpenDrawingImage()
        {
            var imageData = new byte[] {};
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
            var flowsheet = Entity.Flowsheet == null
                ? new FlowsheetViewModel(null, RepositoryFactory)
                : Entity.Flowsheet.Clone();
            var viewModel = new FlowsheetEdit("Технологическая карта", flowsheet, ReadOnly, ViewService, RepositoryFactory);
            if (ViewService.ShowViewDialog(viewModel) == true)
            {
                if (Entity.Flowsheet == null)
                    Entity.Flowsheet = flowsheet;
                else
                    flowsheet.CopyTo(Entity.Flowsheet);
                Entity.Flowsheet.SaveEntity();
                Entity.SaveEntity();
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