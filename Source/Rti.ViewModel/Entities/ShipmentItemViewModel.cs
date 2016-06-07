using System;
using System.Diagnostics.CodeAnalysis;

namespace Rti.ViewModel.Entities
{
    public partial class ShipmentItemViewModel
    {
        private bool _zeroPrice;

        public bool ZeroPrice
        {
            get { return _zeroPrice; }
            set
            {
                _zeroPrice = value;
                OnPropertyChanged("RealPrice");
            }
        }

        public decimal RealPrice { get { return ZeroPrice ? 0 : Price; } }

        public decimal Sum { get { return Count*RealPrice; } }
        public decimal NdsSum { get { return Sum*Convert.ToDecimal(NdsPercent)/100; } }
        public decimal SumWithNds { get { return Sum + NdsSum; } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "RequestDetail")
                RefreshPrice();
        }

        public void RefreshPrice()
        {
            Price = RequestDetail == null ? 0 : RequestDetail.Price;
            OnPropertyChanged("Sum");
            OnPropertyChanged("NdsSum");
            OnPropertyChanged("SumWithNds");
        }
    }
}