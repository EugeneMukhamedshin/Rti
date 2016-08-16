using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class MaterialArrivalRecordEdit : EditEntityViewModel<MaterialArrivalRecordViewModel, MaterialArrivalRecord>
    {
        public Lazy<List<ContragentViewModel>> SuppliersSource { get; set; }
        public Lazy<List<MaterialViewModel>> MaterialsSource { get; set; }
        public Lazy<List<MeasureUnitViewModel>> MeasureUnitsSource { get; set; }

        public MaterialArrivalRecordEdit(string name, MaterialArrivalRecordViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        public override void Refresh()
        {
            base.Refresh();
            SuppliersSource = new Lazy<List<ContragentViewModel>>(() => RepositoryFactory.GetContragentRepository().GetAllActive(ContragentType.Supplier).Select(m => new ContragentViewModel(m, RepositoryFactory)).ToList());
            MaterialsSource = new Lazy<List<MaterialViewModel>>(() => RepositoryFactory.GetMaterialRepository().GetAllActive().Select(m => new MaterialViewModel(m, RepositoryFactory)).ToList());
            MeasureUnitsSource = new Lazy<List<MeasureUnitViewModel>>(() => RepositoryFactory.GetMeasureUnitRepository().GetAllActive().Select(m => new MeasureUnitViewModel(m, RepositoryFactory)).ToList());
        }

        protected override bool DoValidate()
        {
            if (Entity.InvoiceNumber == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан номер счета-фактуры", true));
                return false;
            }
            if (Entity.Supplier == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан поставщик", true));
                return false;
            }
            if (Entity.WaybillNumber == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан номер накладной", true));
                return false;
            }
            if (Entity.Material == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан материал", true));
                return false;
            }
            if (Entity.MeasureUnit == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана единица измерения", true));
                return false;
            }
            return base.DoValidate();
        }
    }
}