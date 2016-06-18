using System;
using Rti.Model.Repository.Interfaces;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public abstract class ByPeriodReportViewModel : ReportViewModel
    {
        private DateTime _startDate;
        private DateTime _endDate;

        public DateTime StartDate
        {
            get { return _startDate; }
            set
            {
                if (value.Equals(_startDate)) return;
                _startDate = value;
                OnPropertyChanged();
            }
        }

        public DateTime EndDate
        {
            get { return _endDate; }
            set
            {
                if (value.Equals(_endDate)) return;
                _endDate = value;
                OnPropertyChanged();
            }
        }

        protected ByPeriodReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string fileName) : base(name, viewService, repositoryFactory, fileName)
        {
        }
    }
}