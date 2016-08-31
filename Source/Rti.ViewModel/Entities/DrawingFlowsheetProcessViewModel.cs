using System;
using System.Xml.Linq;
using Rti.Model;

namespace Rti.ViewModel.Entities
{
    partial class DrawingFlowsheetProcessViewModel
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

        public decimal DisplayNormTime
        {
            get { return NormTime; }
            set { NormTime = value; }
        }

        public bool AreNamesReadOnly
        {
            get { return Process.ProcessTypeEnum != Model.Domain.ProcessType.Other; }
        }

        public event EventHandler IsIncludedToSummaryChanged;

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("NormTime", "IsIncludedToSummary"))
                OnIsIncludedToSummaryChanged();
        }

        protected virtual void OnIsIncludedToSummaryChanged()
        {
            if (IsIncludedToSummaryChanged != null)
                IsIncludedToSummaryChanged(this, EventArgs.Empty);
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(
                new XAttribute("DisplayName", DisplayName ?? string.Empty),
                new XAttribute("DisplayOperation", DisplayOperation ?? string.Empty),
                new XAttribute("DisplayExecutor", DisplayExecutor ?? string.Empty),
                new XAttribute("DisplayVarName", DisplayVarName ?? string.Empty),
                new XAttribute("DisplayNormTime", DisplayNormTime));
        }
    }
}