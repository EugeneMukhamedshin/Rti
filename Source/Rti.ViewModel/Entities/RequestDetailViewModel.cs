using System;
using System.Runtime.CompilerServices;
using System.Xml.Linq;
using Rti.Model;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    partial class RequestDetailViewModel
    {
        private EquipmentViewModel _equipment;
        private int _doneCount;
        private int _shippedCount;

        public decimal? PlanCalculationPrice { get { return Drawing == null ? null : Drawing.PlanCalculationPrice; } }
        public decimal? FactCalculationPrice { get { return Drawing == null ? null : Drawing.FactCalculationPrice; } }

        public bool EquipmentLeadTimeReadOnly
        {
            get
            {
                return Drawing != null && Drawing.Equipment != null && Drawing.Equipment.ExistanceEnum != Existance.Exist;
            }
        }

        public EquipmentViewModel Equipment
        {
            get
            {
                return Drawing?.Equipment;
                //if (_equipment == null && Drawing?.Equipment != null)
                //    _equipment = new EquipmentViewModel(RepositoryFactory.GetEquipmentRepository().GetById(Drawing.Equipment.Id), RepositoryFactory);
                //return _equipment;
            }
        }

        public string FullDetailName
        {
            get { return string.Format("{0} {1}.{2}", Detail == null ? null : Detail.Name, Drawing.Group == null ? null : Drawing.Group.Name, Drawing.Name); }
        }

        public int DoneCount
        {
            get { return _doneCount; }
            set { _doneCount = value; OnPropertyChanged(); }
        }

        public int ShippedCount
        {
            get { return _shippedCount; }
            set { _shippedCount = value; OnPropertyChanged(); }
        }

        protected override void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (IsMapping)
                return;
            if (propertyName.In("Count", "Price"))
                Sum = Count * Price;
            if (propertyName == "Drawing")
            {
                FillFromDrawing();
                OnPropertyChanged("EquipmentLea`dTimeReadOnly");
                OnPropertyChanged("PlanCalculationPrice");
                OnPropertyChanged("FactCalculationPrice");
            }
        }

        public void FillFromDrawing()
        {
            Group = Drawing == null ? null : Drawing.Group;
            Detail = Drawing == null ? null : Drawing.Detail;
            Material = Drawing == null ? null : Drawing.MaterialByPassport;
            Price = Drawing == null || !Drawing.Price.HasValue ? 0 : Drawing.Price.Value;
            CalculationPrice = Drawing == null ? null : (Drawing.PlanCalculationPrice ?? Drawing.FactCalculationPrice);
            AdditionalInfo = Drawing == null ? null : Drawing.AdditionalInfo;
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("FullDetailName", FullDetailName));
        }
    }
}
