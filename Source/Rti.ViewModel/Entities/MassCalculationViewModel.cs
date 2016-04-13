using System;
using Rti.Model.Domain;

namespace Rti.ViewModel.Entities
{
    public partial class MassCalculationViewModel
    {
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
        }
    }
}