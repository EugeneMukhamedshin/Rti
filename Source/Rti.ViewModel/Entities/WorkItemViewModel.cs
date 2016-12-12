using System;
using System.Xml.Linq;
using Rti.Model;

namespace Rti.ViewModel.Entities
{
    public partial class WorkItemViewModel
    {
        public decimal? Sum
        {
            // Цена в наряде - цена по чертежу. Ранее считалось по фактической калькуляции
            get { return Drawing != null ? DoneCount * Drawing.Price : null; }
        }

        public decimal? MainSalary
        {
            get { return Drawing != null && Drawing.FactCalculation != null ? DoneCount*Drawing.FactCalculation.MainSalary : null; }
        }

        public int RemainedCount
        {
            get { return (RequestCount ?? 0) - (DoneCount ?? 0) + (RejectedCount ?? 0); }
        }

        /// <summary>
        /// Количество съемов
        /// </summary>
        public int TakeOffCount
        {
            get
            {
                return Drawing == null || Drawing.Equipment == null || Drawing.Equipment.Output == 0
                    ? 0
                    : (int)Math.Round((double)((TaskCount ?? 0) / Drawing.Equipment.Output), 0);
            }
        }

        /// <summary>
        /// Время использования пресса
        /// </summary>
        public decimal MachineUsageTime
        {
            get { return TakeOffCount * (Drawing == null ? 0 : (Drawing.CuttingTime ?? 0)); }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {base.OnPropertyChanged(propertyName);
            if (propertyName.In("DoneCount", "Drawing"))
                OnPropertyChanged("Sum");
            if (propertyName.In("WorkDate", "SortOrder"))
                BatchNumber = string.Format("{0:dd.MM.yyyy}/{1}", WorkDate, SortOrder);
            if (propertyName.In("DoneCount", "RequestCount", "RejectedCount"))
                OnPropertyChanged("RemainedCount");
            if (propertyName.In("TaskCount", "Drawing"))
                OnPropertyChanged("TakeOffCount");
            if (propertyName.In("TakeOffCount", "FlowsheetMachine"))
                OnPropertyChanged("MachineUsageTime");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Sum", Sum ?? 0));
        }
    }
}