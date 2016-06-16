using System.Collections.ObjectModel;
using System.Linq;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.EditViewModel
{
    public class EquipmentPaymentEdit : EditEntityViewModel<EquipmentPaymentViewModel, EquipmentPayment>
    {
        private ObservableCollection<DrawingViewModel> _requestsSource;

        public override void Refresh()
        {
            base.Refresh();
            DoAsync(() => RepositoryFactory.GetDrawingRepository().GetUnpaidEquipments().Select(o => new DrawingViewModel(o, RepositoryFactory)).ToList(),
                res => DrawingsSource = new ObservableCollection<DrawingViewModel>(res));
        }

        public ObservableCollection<DrawingViewModel> DrawingsSource
        {
            get { return _requestsSource; }
            set
            {
                if (Equals(value, _requestsSource)) return;
                _requestsSource = value;
                OnPropertyChanged();
            }
        }

        public EquipmentPaymentEdit(string name, EquipmentPaymentViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
        }

        protected override void DoSave()
        {
            base.DoSave();
            if (Source.Drawing != null && Source.Drawing.Equipment != null)
                Source.Drawing.Equipment.SaveEntity();
        }

        protected override bool DoValidate()
        {
            if (Entity.Drawing == null)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задан чертеж/оснастка"));
                return false;
            }
            if (Entity.Sum <= 0)
            {
                ViewService.ShowMessage(new MessageViewModel("Ошибка", "Не задана сумма оплаты"));
                return false;
            }
            return base.DoValidate();
        }
    }
}