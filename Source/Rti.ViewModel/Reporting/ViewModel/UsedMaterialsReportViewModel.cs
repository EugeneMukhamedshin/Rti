<<<<<<< HEAD
﻿using Rti.Model.Repository.Interfaces;
=======
using Rti.Model.Repository.Interfaces;
>>>>>>> origin/develop
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class UsedMaterialsReportViewModel : XsltReportViewModel
    {
        private MaterialViewModel _material;

        public MaterialViewModel Material
        {
            get { return _material; }
            set
            {
                if (Equals(value, _material)) return;
                _material = value;
                OnPropertyChanged();
            }
        }

        public UsedMaterialsReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetUsedMaterialsReport(StartDate, EndDate, Material);
        }
    }
}