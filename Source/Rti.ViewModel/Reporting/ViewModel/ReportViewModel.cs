using System;
using Rti.Model.Repository.Interfaces;
using Rti.ViewModel.Entities.Commands;

namespace Rti.ViewModel.Reporting.ViewModel
{
    public abstract class ReportViewModel : BaseViewModel, IClosable
    {
        protected readonly IViewService ViewService;
        private string _fileName;

        public string FileName
        {
            get { return _fileName; }
            set
            {
                if (value == _fileName) return;
                _fileName = value;
                OnPropertyChanged();
            }
        }

        public string ExtensionFilter { get; set; }

        public string Name { get; set; }

        public DelegateCommand GenerateCommand { get; set; }
        public DelegateCommand SelectFileCommand { get; set; }
        public Action<bool?> Close { get; set; }
        public DelegateCommand CloseCommand { get; set; }

        public ReportViewModel(string name, IViewService viewService, IRepositoryFactory repositoryFactory, string fileName) : base(repositoryFactory)
        {
            Name = name;
            ViewService = viewService;
            _fileName = fileName;
            GenerateCommand = new DelegateCommand(
                "",
                o => true,
                o => GenerateReport());
            SelectFileCommand = new DelegateCommand(
                "",
                o => true,
                o => SelectFile());
            CloseCommand = new DelegateCommand(o => Close(null));
        }

        private void SelectFile()
        {
            string fileName = FileName;
            if (ViewService.ShowFileDialog(ref fileName, ExtensionFilter))
                FileName = fileName;
        }

        public void GenerateReport()
        {
            DoGenerateReport();
        }

        protected abstract void DoGenerateReport();

        public bool CanClose()
        {
            return true;
        }
    }
}