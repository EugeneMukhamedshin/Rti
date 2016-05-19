using System;

namespace Rti.ViewModel.Entities
{
    public partial class WorkItemViewModel
    {
        public string BatchNumber
        {
            get { return string.Format("{0:dd.MM.yyyy}/{1}", WorkDate, SortOrder); }
        }

        public decimal? Sum
        {
            get { return Drawing != null && Drawing.PlanCalculation != null ? DoneCount * Drawing.PlanCalculation.Summary : null; }
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
                    : (int) Math.Round((double) ((TaskCount ?? 0)/Drawing.Equipment.Output), 0);
            }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName.In("DoneCount", "Drawing"))
                OnPropertyChanged("Sum");
            if (propertyName == "Date")
                OnPropertyChanged("BatchNumber");
            if (propertyName.In("DoneCount", "RequestCount", "RejectedCount"))
                OnPropertyChanged("RemainedCount");
            if (propertyName.In("TaskCount", "Drawing"))
                OnPropertyChanged("TakeOffCount");
        }
    }
}