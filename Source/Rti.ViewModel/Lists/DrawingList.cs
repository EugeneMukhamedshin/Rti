using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Lists
{
    public class DrawingList : EntityList<DrawingViewModel, Drawing>, IClosable
    {
        public Lazy<List<GroupViewModel>> GroupsSource { get; set; }
        public Lazy<List<DetailViewModel>> DetailsSource { get; set; }
        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }
        public Lazy<List<MeasureUnitViewModel>> MeasureUnitsSource { get; set; }
        public Lazy<List<EquipmentViewModel>> EquipmentsSource { get; set; }
        public Lazy<List<MethodViewModel>> MethodsSource { get; set; }

        public DelegateCommand AddDrawingCommand { get; set; }
        public DelegateCommand OpenMassCalculationCommand { get; set; }
        public DelegateCommand PrevPageCommand { get; set; }
        public DelegateCommand NextPageCommand { get; set; }

        public int Page { get; set; }
        public int PageSize { get; set; }

        public DrawingList(bool editMode, IViewService viewService, IRepositoryFactory repositoryFactory) : base(editMode, viewService, repositoryFactory)
        {
            AddDrawingCommand = new DelegateCommand(
                "Добавить новый чертеж",
                o => true,
                o => AddDrawing());
            OpenMassCalculationCommand = new DelegateCommand(
                "Открыть расчет массы",
                o => true,
                o => OpenMassCalculation());
            PrevPageCommand = new DelegateCommand(
                "Предыдущая страница",
                o => Page > 0,
                o => { Page--; Refresh(); });
            NextPageCommand = new DelegateCommand(
                "Следующая страница",
                o => Page > 0,
                o =>
                {
                    Page++;
                    Refresh();
                });
            Page = 0;
            PageSize = 2;
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

        protected override IEnumerable<DrawingViewModel> GetItems()
        {
            return RepositoryFactory.GetDrawingRepository().GetPage(Page, PageSize).Select(o => new DrawingViewModel(o, RepositoryFactory));
        }

        private void AddDrawing()
        {
            var drawing = DoCreateNewEntity();
            Items.Add(drawing);
            SelectedItem = drawing;
        }

        protected override DrawingViewModel DoCreateNewEntity()
        {

            var drawing = new DrawingViewModel(null, RepositoryFactory)
            {
                SortOrder = Items.Any() ? Items.Max(o => o.SortOrder) + 1 : 1,
                Name = "Новый чертеж"
            };
            drawing.SaveEntity();
            return drawing;
        }

        protected override void DoDeleteEntity(DrawingViewModel entity)
        {
            entity.IsDeleted = true;
            entity.SaveEntity();
        }

        protected override bool AcceptFind(DrawingViewModel entity, string searchText)
        {
            return searchText.ContainedIn(entity.Name, entity.Note, entity.SortOrder);
        }

        protected override void OnSelectedItemChanging()
        {
            base.OnSelectedItemChanging();
            if (SelectedItem != null)
                try
                {
                    if (SelectedItem.IsChanged)
                        SelectedItem.SaveEntity();
                }
                catch (ValidateException ex)
                {
                    ViewService.ShowMessage(new MessageViewModel("Ошибка", ex.Message, true));
                }
        }

        private void OpenMassCalculation()
        {
        }

        public bool CanClose()
        {
            if (Items.Any(drawing => !drawing.IsValid))
            {
                return
                    ViewService.ShowConfirmation(new MessageViewModel("Внимание",
                        "Есть записи с ошибками, они не будут сохранены. Закрыть окно?", true));
            }
            return true;
        }

        public Action<bool?> Close { get; set; }
    }
}