using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class MassCalculationEdit: EditEntityViewModel<MassCalculationViewModel, MassCalculation>
    {
        public DelegateCommand CalculateMassCommand { get; set; }

        public MassCalculationEdit(string name, MassCalculationViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory) : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            CalculateMassCommand = new DelegateCommand(
                "Рассчитать массу",
                o => true,
                o => Entity.CalculateMass());
            Entity.PropertyChanged += Entity_PropertyChanged;
        }

        private void Entity_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == "DetailTypeEnum")
            {
                OnPropertyChanged("IsRound");
                OnPropertyChanged("IsSquare");
                OnPropertyChanged("IsOther");
            }
        }

        public bool IsRound { get { return Entity.DetailTypeEnum == DetailType.MoldingRound1 || Entity.DetailTypeEnum == DetailType.MoldingRound2 || Entity.DetailTypeEnum == DetailType.MoldingRound3|| Entity.DetailTypeEnum == DetailType.MoldingRound4; } }
        public bool IsSquare { get { return Entity.DetailTypeEnum == DetailType.MoldingSquare1 || Entity.DetailTypeEnum == DetailType.MoldingSquare2 || Entity.DetailTypeEnum == DetailType.MoldingSquare3 || Entity.DetailTypeEnum == DetailType.LaserCutting; } }
        public bool IsOther { get { return Entity.DetailTypeEnum == DetailType.Other; } }
    }
}