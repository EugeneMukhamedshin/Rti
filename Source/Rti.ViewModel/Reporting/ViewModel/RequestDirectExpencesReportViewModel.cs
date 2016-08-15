<<<<<<< HEAD
﻿using Rti.Model.Repository.Interfaces;
=======
using Rti.Model.Repository.Interfaces;
>>>>>>> origin/develop
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class RequestDirectExpencesReportViewModel : XsltReportViewModel
    {
        private RequestViewModel _request;

        public RequestViewModel Request
        {
            get { return _request; }
            set
            {
                if (Equals(value, _request)) return;
                _request = value;
                OnPropertyChanged();
            }
        }

        public RequestDirectExpencesReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetRequestDirectExpencesReport(StartDate, EndDate, Request);
        }
    }
}