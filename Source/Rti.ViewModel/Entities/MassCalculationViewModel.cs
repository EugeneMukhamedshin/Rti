using System;
using Rti.Model.Domain;
<<<<<<< HEAD
using Rti.ViewModel.Calculation;
=======
>>>>>>> origin/develop

namespace Rti.ViewModel.Entities
{
    public partial class MassCalculationViewModel
    {
<<<<<<< HEAD
        public string CalculatedMass
        {
            get
            {
                var mass = CalculateMass();
                return mass == null ? "Недостаточно данных" : string.Format("{0:f3}", mass);
            }
        }

        public double? CalculateMass()
        {
            var pi = Math.PI;

            switch (DetailTypeEnum)
            {
                case DetailType.MoldingRound1:
                    return (pi * RndDNar * RndDNar * RndDShn * MaterialDensity) / 4000;
                case DetailType.MoldingRound2:
                    return (pi * RndDShn * MaterialDensity * (RndDNar * RndDNar - RndDVn * RndDVn)) / 4000;
                case DetailType.MoldingRound3:
                    return (pi * MaterialDensity * (RndDNar * RndDNar * RndDShn - RndDSr * RndDSr * RndS2 - RndDVn * RndDVn * RndS1)) / 4000;
                case DetailType.MoldingRound4:
                    return (pi * MaterialDensity * RndDShn * RndDShn * RndDSr) / 4000;
                case DetailType.MoldingSquare1:
                    return (SqB * SqL * SqS * MaterialDensity) / 1000;
                case DetailType.MoldingSquare2:
                    return ((SqS * SqL * SqB - SqS * SqL1 * SqB1) * MaterialDensity) / 1000;
                case DetailType.MoldingSquare3:
                    return SqB * SqL * SqS * MaterialDensity / 1000 - pi * SqDVn * SqDVn / 4000;
                case DetailType.LaserCutting:
                    return (VlS * VlL * VlB * MaterialDensity * 1000) / ((VlL / (VlL1 + 5)) * (VlB / (VlB1 + 5)));
                case DetailType.Other:
                    return new Calculator().Calculate(MassFormula);
            }
            return null;
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            base.OnPropertyChanged("CalculatedMass");
        }

        public override string ToString()
        {
            return CalculatedMass;
=======
        private double _mass;

        public double Mass
        {
            get { return _mass; }
            set
            {
                if (value.Equals(_mass)) return;
                _mass = value;
                OnPropertyChanged();
            }
        }

        public void CalculateMass()
        {
            var pi = Math.PI;
            var dNar = RndDNar ?? 0;
            var s = RndDShn ?? 0; 
            var p = MaterialDensity ?? 0;
            var dVn = RndDVn ?? 0;
            var dSr = RndDSr ?? 0;
            var s1 = RndS1 ?? 0;
            var s2 = RndS2 ?? 0;
            var sqB = SqB ?? 0;
            var sqL = SqL ?? 0;
            var sqS = SqS ?? 0;
            var sqL1 = SqL1 ?? 0;
            var sqB1 = SqB1 ?? 0;
            var sqDVn = SqDVn ?? 0;
            switch (DetailTypeEnum)
            {
                case DetailType.MoldingRound1:
                    Mass = (pi*Math.Pow(dNar, 2)*s*p)/4000;
                    break;
                case DetailType.MoldingRound2:
                    Mass = (pi*s*p*(Math.Pow(dNar, 2) - Math.Pow(dVn, 2)))/4000;
                    break;
                case DetailType.MoldingRound3:
                    Mass = (pi*p*(dNar*dNar*s - dSr*dSr*s2 - dVn*dVn*s1))/4000;
                    break;
                case DetailType.MoldingRound4:
                    Mass = (pi*p*s*s*dSr)/4000;
                    break;
                case DetailType.MoldingSquare1:
                    Mass = (sqB*sqL*sqS*p)/1000;
                    break;
                case DetailType.MoldingSquare2:
                    Mass = ((sqS*sqL*sqB - sqS*sqL1*sqB1)*p)/1000;
                    break;
                case DetailType.MoldingSquare3:
                    Mass = sqB*sqL*sqS*p/1000 - pi*sqDVn*sqDVn/4000;
                    break;
            }
>>>>>>> origin/develop
        }
    }
}