using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.IO;
using Rti.Model.Domain;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.EditViewModel
{
    public class MassCalculationEdit : EditEntityViewModel<MassCalculationViewModel, MassCalculation>
    {
        private readonly Dictionary<DetailType, List<Property>> _detailTypeProperties;

        public DelegateCommand ShowDetailTypesCommand { get; set; }

        public MassCalculationEdit(string name, MassCalculationViewModel entity, bool readOnly, IViewService viewService, IRepositoryFactory repositoryFactory)
            : base(name, entity, readOnly, viewService, repositoryFactory)
        {
            ShowDetailTypesCommand = new DelegateCommand(
                "Типы деталей",
                o => true,
                o => ShowDetailTypes());

            var detailType = new DetailTypeProperty("DetailTypeEnum", "Тип детали");

            var p = new Property("MaterialDensity", "Плотность материала, г/см3 (P)");

            var rDNar = new Property("RndDNar", "Диаметр наружный, мм (Dнар)");
            var rS = new Property("RndDShn", "Толщина пластины, мм (S)");
            var rDShn = new Property("RndDShn", "Диаметр шнура, мм (Dшн)");
            var rDVn = new Property("RndDVn", "Диаметр внутренний, мм (Dвн)");
            var rDSr = new Property("RndDSr", "Диаметр по средней линии, мм (Dср)");
            var rS1 = new Property("RndS1", "Диаметр шнура, мм / Толщина пластины, мм (S1)");
            var rS2 = new Property("RndS2", "Диаметр шнура, мм / Толщина пластины, мм (S2)");

            var sqB = new Property("SqB", "Ширина, мм (B)");
            var sqL = new Property("SqL", "Длина, мм (L)");
            var sqS = new Property("SqS", "Толщина пластины, мм (S)");
            var sqL1 = new Property("SqL1", "Длина, мм (L1)");
            var sqB1 = new Property("SqB1", "Ширина отв, мм (B1)");
            var sqDVn = new Property("SqDVn", "Диаметр отв, мм (Dвн)");

            var vlS = new Property("VlS", "Толщина пластины, мм (S)");
            var vlL = new Property("VlL", "Длина пластины, мм (L)");
            var vlB = new Property("VlB", "Ширина пластины, мм (B)");
            var vlL1 = new Property("VlL1", "Длина детали, мм (L1)");
            var vlB1 = new Property("VlB1", "Ширина детали, мм (B1)");

            _detailTypeProperties = new Dictionary<DetailType, List<Property>>
            {
                // Mass = (pi*Math.Pow(dNar, 2)*s*p)/4000;
                {
                    DetailType.MoldingRound1, new List<Property>
                    {
                        detailType,
                        rS,
                        rDNar,
                        p
                    }
                },
                // Mass = (pi*s*p*(Math.Pow(dNar, 2) - Math.Pow(dVn, 2)))/4000;
                {
                    DetailType.MoldingRound2, new List<Property>
                    {
                        detailType,
                        rS,
                        rDNar,
                        rDVn,
                        p
                    }
                },
                // Mass = (pi*p*(dNar*dNar*s - dSr*dSr*s2 - dVn*dVn*s1))/4000;
                {
                    DetailType.MoldingRound3, new List<Property>
                    {
                        detailType,
                        rS,
                        rS1,
                        rS2,
                        rDNar,
                        rDVn,
                        rDSr,
                        p
                    }
                },
                // Mass = (pi*p*s*s*dSr)/4000;
                {
                    DetailType.MoldingRound4, new List<Property>
                    {
                        detailType,
                        rDShn,
                        rDVn,
                        p
                    }
                },
                // Mass = (sqB*sqL*sqS*p)/1000;
                {
                    DetailType.MoldingSquare1, new List<Property>
                    {
                        detailType,
                        sqS,
                        sqL,
                        sqB,
                        p
                    }
                },
                // Mass = ((sqS*sqL*sqB - sqS*sqL1*sqB1)*p)/1000;
                {
                    DetailType.MoldingSquare2, new List<Property>
                    {
                        detailType,
                        sqS,
                        sqL,
                        sqB,
                        sqL1,
                        sqB1,
                        p
                    }
                },
                // Mass = sqB*sqL*sqS*p/1000 - pi*sqDVn*sqDVn/4000;
                {
                    DetailType.MoldingSquare3, new List<Property>
                    {
                        detailType,
                        sqS,
                        sqL,
                        sqB,
                        sqDVn,
                        p
                    }
                },
                // Mass = (vlS*vlL*vlB*p*1000)/((vlL/(vlL1 + 5))*(vlB/(vlB1 + 5)))
                {
                    DetailType.LaserCutting, new List<Property>
                    {
                        detailType,
                        vlS,
                        vlL,
                        vlB,
                        vlL1,
                        vlB1,
                        p
                    }
                },
                {
                    DetailType.Other, new List<Property>
                    {
                        detailType,
                        new Property("MassFormula", "Формула расчета")
                    }
                },
            };

            Entity.PropertyChanged += Entity_PropertyChanged;
        }

        private void ShowDetailTypes()
        {
            var imageData = File.ReadAllBytes(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Content", "DetailTypes.jpg"));
            var viewer = new ImageEdit("Типы деталей", imageData, true, ViewService, RepositoryFactory);
            viewer.IsIsUploadCommandAvailable = false;
            ViewService.ShowViewDialog(viewer);
        }

        private void Entity_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (e.PropertyName == "DetailTypeEnum")
            {
                OnPropertyChanged("Properties");
            }
        }

        public ObservableCollection<Property> Properties
        {
            get
            {
                var result = _detailTypeProperties[Entity.DetailTypeEnum];
                return new ObservableCollection<Property>(result);
            }
        }
    }

    public class Property
    {
        public string Path { get; set; }
        public string Header { get; set; }

        public Property(string path, string header)
        {
            Path = path;
            Header = header;
        }
    }

    public class DetailTypeProperty : Property
    {
        public DetailTypeProperty(string path, string header) : base(path, header)
        {
        }
    }
}