using System;
using System.Collections.Generic;
using System.Linq;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public abstract class DrawingReportViewModel : XsltReportViewModel
    {
        public DrawingReportViewModel(string name, IViewService viewService,
            IRepositoryFactory repositoryFactory, string xsltPath, string fileName)
            : base(name, viewService, repositoryFactory, xsltPath, fileName)
        {
            DrawingsSource = new Lazy<List<DrawingViewModel>>(() => RepositoryFactory.GetDrawingRepository().GetAllActive().Select(m => new DrawingViewModel(m, RepositoryFactory)).ToList());
        }

        public Lazy<List<DrawingViewModel>> DrawingsSource { get; set; }

        private DrawingViewModel _drawing;

        public DrawingViewModel Drawing
        {
            get { return _drawing; }
            set
            {
                if (Equals(value, _drawing)) return;
                _drawing = value;
                OnPropertyChanged();
            }
        }
    }
}