using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class DrawingEdit : EditEntityViewModel<DrawingViewModel, Drawing>
    {
        private ObservableCollection<AttachmentViewModel> _attachments;
        private AttachmentViewModel _selectedAttachment;

        public ObservableCollection<AttachmentViewModel> Attachments
        {
            get { return _attachments; }
            set
            {
                _attachments = value;
                OnPropertyChanged();
            }
        }

        public AttachmentViewModel SelectedAttachment
        {
            get { return _selectedAttachment; }
            set
            {
                _selectedAttachment = value;
                OnPropertyChanged();
            }
        }

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

        public DelegateCommand AddAttachmentCommand { get; set; }
        public DelegateCommand DeleteAttachmentCommand { get; set; }
        public DelegateCommand ViewAttachmentCommand { get; set; }

        public ImageEdit ImageEdit { get; set; }

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

            AddAttachmentCommand = new DelegateCommand(o => AddAttachment());
            DeleteAttachmentCommand = new DelegateCommand(o => DeleteAttachment());
            ViewAttachmentCommand = new DelegateCommand(o => ViewAttachment());

            Entity.PropertyChanged += (sender, args) =>
            {
                if (args.PropertyName == "MaterialByPassport")
                {
                    if (Entity.MassCalculation != null)
                    {
                        Entity.MassCalculation.MaterialDensity = Entity.MaterialByPassport.Density;
                        Entity.MassCalculation.SaveEntity();
                    }
                }
            };
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

            DoAsync(() => RepositoryFactory.GetAttachmentRepository().GetByDrawingId(Source.Id).Select(o => new AttachmentViewModel(o, RepositoryFactory)),
                res =>
                {
                    Attachments = new ObservableCollection<AttachmentViewModel>(res);
                    SelectedAttachment = Attachments.FirstOrDefault();
                });
        }

        protected override void DoSave()
        {
            using (RepositoryFactory.CreateSessionScope())
            {
                using (var transactionScope = RepositoryFactory.CreateTransactionScope())
                {
                    base.DoSave();
                    foreach (var attachment in Attachments)
                    {
                        attachment.SaveEntity();
                        RepositoryFactory.GetAttachmentRepository().SaveData(attachment.Id, attachment.Data);
                    }
                    transactionScope.Commit();
                }
            }
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

        private void AddAttachment()
        {
            string fileName = null;
            if (ViewService.ShowFileDialog(ref fileName, "Изображения (*.jpg)|*.jpg", false))
            {
                var attachment = new AttachmentViewModel(null, RepositoryFactory)
                {
                    Filename = Path.GetFileName(fileName),
                    Data = File.ReadAllBytes(fileName),
                    Drawing = Source
                };

                if (!Source.IsNewEntity)
                {
                    using (RepositoryFactory.CreateSessionScope())
                    {
                        using (var transaction = RepositoryFactory.CreateTransactionScope())
                        {
                            attachment.SaveEntity();
                            RepositoryFactory.GetAttachmentRepository().SaveData(attachment.Id, attachment.Data);

                            transaction.Commit();
                        }
                    }
                }
                Attachments.Add(attachment);
                SelectedAttachment = attachment;
            }
        }

        private void DeleteAttachment()
        {
            if (SelectedAttachment != null && ViewService.ShowConfirmation(new MessageViewModel("Удаление", "Подтвердите удаление")))
            {
                SelectedAttachment.DeleteEntity();

                Attachments.Remove(SelectedAttachment);
            }
        }

        private void ViewAttachment()
        {
            if (SelectedAttachment == null)
                return;
            var path = Path.Combine(Path.GetTempPath(), SelectedAttachment.Filename);
            File.WriteAllBytes(path, SelectedAttachment.Data);
            System.Diagnostics.Process.Start(path);
        }

        private void OpenDrawingImage()
        {
            ViewService.ShowViewDialog(ImageEdit);
        }

        private void OpenFlowsheet()
        {
            var saved = Entity.IsSaved;
            if (!saved && ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед открытием необходимо сохранить чертеж. Выполнить сохранение?")))
                saved = Save();
            if (saved)
            {
                var viewModel = new DrawingFlowsheetEdit("Технологическая карта", Source, ReadOnly, ViewService, RepositoryFactory);
                viewModel.Refresh();
                ViewService.ShowViewDialog(viewModel);
                viewModel.Entity.CopyTo(Entity);
            }
        }

        private void OpenCalculation()
        {
            var saved = Entity.IsSaved;
            if (!saved && ViewService.ShowConfirmation(new MessageViewModel("Внимание", "Перед открытием необходимо сохранить чертеж. Выполнить сохранение?")))
                saved = Save();
            if (saved)
            {
                var calculationEdit = new DrawingCalculationEdit("Калькуляция", Source, ReadOnly, ViewService, RepositoryFactory);
                if (ViewService.ShowViewDialog(calculationEdit) == true)
                {
                    calculationEdit.Entity.CopyTo(Entity);
                    Entity.PlanCalculation = Source.PlanCalculation;
                    Entity.FactCalculation = Source.FactCalculation;
                    Source.RaiseCalculationPriceChanged();
                }
            }
        }

        protected override bool DoValidate()
        {
            if (String.IsNullOrEmpty(Entity.Name))
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задано наименование"));
                return false;
            }
            if (Entity.Group == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана группа"));
                return false;
            }
            //if (Entity.Equipment == null)
            //{
            //    ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана оснастка"));
            //    return false;
            //}
            return base.DoValidate();
        }
    }
}