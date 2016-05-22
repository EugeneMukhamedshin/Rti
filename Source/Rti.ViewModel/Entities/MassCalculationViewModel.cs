using System;
using Rti.Model.Domain;
using Rti.ViewModel.Calculation;

namespace Rti.ViewModel.Entities
{
    public partial class MassCalculationViewModel
    {
        public string DisplayCalculatedMass
        {
            get
            {
                var mass = CalculatedMass;
                return mass == null ? "������������ ������" : string.Format("{0:f3}", mass);
            }
        }

        public decimal? CalculatedMass
        {
            get
            {
                var calculated = CalculateMass();
                return calculated.HasValue ? Math.Round(calculated.Value / 1000, 3) : (decimal?)null;
            }
        }

        public decimal? CalculateMass()
        {
            var pi = (decimal)Math.PI;

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
                    return (VlS * VlL * VlB * MaterialDensity / 1000) / ((VlL / (VlL1 + 5)) * (VlB / (VlB1 + 5)));
                case DetailType.Other:
                    return new Calculator().Calculate(MassFormula);
            }
            return null;
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            base.OnPropertyChanged("CalculatedMass");
            base.OnPropertyChanged("DisplayCalculatedMass");
        }

        public override string ToString()
        {
            return DisplayCalculatedMass;
        }
    }
}