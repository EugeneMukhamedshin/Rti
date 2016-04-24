using System;

namespace Rti.ViewModel.Entities
{
    partial class CalculationViewModel
    {
        public void Calculate()
        {
            var flowsheet = RepositoryFactory.GetFlowsheetRepository().GetByDrawingId(Drawing.Id);
            if (flowsheet == null)
                throw new InvalidOperationException("Не заполнена технологическая карта");
            var flowsheetProcesses = RepositoryFactory.GetFlowsheetProcessRepository().GetByFlowsheetId(flowsheet.Id);
        }
    }
}
