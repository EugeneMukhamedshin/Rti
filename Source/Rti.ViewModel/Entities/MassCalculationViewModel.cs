using System;
using System.Xml.Linq;
using Rti.Model.Domain;
using Rti.ViewModel.Calculation;

namespace Rti.ViewModel.Entities
{
    public partial class MassCalculationViewModel
    {
        private double? _calculatedMass;

        public string DisplayCalculatedMass
        {
            get
            {
                var mass = CalculatedMass;
                return mass == null ? "Недостаточно данных" : string.Format("{0:f3} кг", mass);
            }
        }

        private void CalculateMass()
        {
            var pi = Math.PI;

            double? result = null;

            switch (DetailTypeEnum)
            {
                case DetailType.MoldingRound1:
                    result = (pi * RndDNar * RndDNar * RndDShn * MaterialDensity) / 4000;
                    break;
                case DetailType.MoldingRound2:
                    result = (pi * RndDShn * MaterialDensity * (RndDNar * RndDNar - RndDVn * RndDVn)) / 4000;
                    break;
                case DetailType.MoldingRound3:
                    result = (pi * MaterialDensity * (RndDNar * RndDNar * RndDShn - RndDSr * RndDSr * RndS2 - RndDVn * RndDVn * RndS1)) / 4000;
                    break;
                case DetailType.MoldingRound4:
                    result = (pi * pi * MaterialDensity * RndDShn * RndDShn * RndDVn) / 4000;
                    break;
                case DetailType.MoldingSquare1:
                    result = (SqB * SqL * SqS * MaterialDensity) / 1000;
                    break;
                case DetailType.MoldingSquare2:
                    result = ((SqS * SqL * SqB - SqS * SqL1 * SqB1) * MaterialDensity) / 1000;
                    break;
                case DetailType.MoldingSquare3:
                    result = SqB * SqL * SqS * MaterialDensity / 1000 - pi * SqDVn * SqDVn / 4000;
                    break;
                case DetailType.LaserCutting:
                    result = (VlS * VlL * VlB * MaterialDensity / 1000) / ((VlL / (VlL1 + 5)) * (VlB / (VlB1 + 5)));
                    break;
                case DetailType.Other:
                    result = new Calculator().Calculate(MassFormula);
                    break;
            }
            CalculatedMass = result.HasValue ? Math.Round(DetailTypeEnum == DetailType.Other ? result.Value : result.Value / 1000, 3) : (double?)null;
            if (CalculatedCallback != null)
                CalculatedCallback();
        }

        public Action CalculatedCallback { get; set; }

        public double? CalculatedMass
        {
            get { return _calculatedMass; }
            set
            {
                if (value.Equals(_calculatedMass)) return;
                _calculatedMass = value;
                OnPropertyChanged("CalculatedMass");
                OnPropertyChanged("DisplayCalculatedMass");
            }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            CalculateMass();
        }

        public override string ToString()
        {
            return DisplayCalculatedMass;
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("CalculatedMass", CalculatedMass ?? 0));
        }
    }
}