<<<<<<< HEAD
﻿using System;
=======
using System;
>>>>>>> origin/develop
using System.Diagnostics.CodeAnalysis;
using System.Xml.Linq;

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
        public decimal RealPriceWithNds { get { return RealPrice*Convert.ToDecimal(NdsPercent)/100; } }

        public decimal Sum { get { return Count * RealPrice; } }
        public decimal NdsSum { get { return Sum * Convert.ToDecimal(NdsPercent) / 100; } }
        public decimal SumWithNds { get { return Sum + NdsSum; } }

        public string FullDetailName
        {
            get
            {
                return RequestDetail.FullDetailName;
            }
        }

        public double? NetMass
        {
            get
            {
                return
                    Count*(
                        RequestDetail != null && RequestDetail.Drawing != null &&
                        RequestDetail.Drawing.FactMass != null
                            ? RequestDetail.Drawing.FactMass
                            : RequestDetail != null && RequestDetail.Drawing != null &&
                              RequestDetail.Drawing.MassCalculation != null
                                ? RequestDetail.Drawing.MassCalculation.CalculatedMass
                                : null);
            }
        }
        
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

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(
                new XAttribute("FullDetailName", FullDetailName),
                new XAttribute("RealPrice", RealPrice),
                new XAttribute("Sum", Sum),
                new XAttribute("NdsSum", NdsSum),
                new XAttribute("SumWithNds", SumWithNds),
                new XAttribute("NetMass", NetMass ?? 0),
                new XAttribute("RealPriceWithNds", RealPriceWithNds));
        }
    }
}