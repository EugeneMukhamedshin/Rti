using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public class DrawingFlowsheetReportViewModel : XsltReportViewModel
    {
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

        public DrawingFlowsheetReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string xsltPath, string fileName) : base(name, viewService, repositoryFactory, xsltPath, fileName) { }

        protected override byte[] GetReport(ReportService reportService)
        {
            return reportService.GetDrawingFlowsheetReport(Drawing);
        }
    }
}