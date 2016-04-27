namespace Rti.ViewModel.Entities
{
    partial class FlowsheetProcessViewModel
    {
        public string DisplayName
        {
            get { return Process.ProcessTypeEnum == Model.Domain.ProcessType.Other ? Name : Process.Name; }
            set { Name = value; }
        }

        public string DisplayOperation
        {
            get { return Process.ProcessTypeEnum == Model.Domain.ProcessType.Other ? Operation : Process.DefaultOperation; }
            set { Operation = value; }
        }

        public string DisplayExecutor
        {
            get { return Process.ProcessTypeEnum == Model.Domain.ProcessType.Other ? Executor : Process.DefaultExecutor; }
            set { Executor = value; }
        }

        public string DisplayVarName
        {
            get { return Process.ProcessTypeEnum == Model.Domain.ProcessType.Other ? VarName : Process.VariableName; }
            set { VarName = value; }
        }

        public double DisplayNormTime
        {
            get { return Process.ProcessTypeEnum == Model.Domain.ProcessType.Other ? NormTime : (Process.DefaultNormTime ?? 0); }
            set { NormTime = value; }
        }

        public bool AreNamesReadOnly
        {
            get { return Process.ProcessTypeEnum != Model.Domain.ProcessType.Other; }
        }
    }
}