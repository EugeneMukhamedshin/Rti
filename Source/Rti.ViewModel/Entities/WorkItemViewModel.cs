<<<<<<< HEAD
Ôªøusing System;
=======
using System;
>>>>>>> origin/develop
using System.Xml.Linq;

namespace Rti.ViewModel.Entities
{
    public partial class WorkItemViewModel
    {
        public decimal? Sum
        {
            get { return Drawing != null && Drawing.FactCalculation != null ? DoneCount * Drawing.FactCalculation.Summary : null; }
        }

        public int RemainedCount
        {
            get { return (RequestCount ?? 0) - (DoneCount ?? 0) + (RejectedCount ?? 0); }
        }

        /// <summary>
        /// –ö–æ–ª–∏—á–µ—Å—Ç–≤–æ —Å—ä–µ–º–æ–≤
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
<<<<<<< HEAD
        /// –í—Ä–µ–º—è –∏—Å–ø–æ–ª—å–∑–æ–≤–∞–Ω–∏—è –ø—Ä–µ—Å—Å–∞
=======
        /// ¬ÂÏˇ ËÒÔÓÎ¸ÁÓ‚‡ÌËˇ ÔÂÒÒ‡
>>>>>>> origin/develop
        /// </summary>
        public decimal MachineUsageTime
        {
            get { return TakeOffCount * (FlowsheetMachine == null ? 0 : (FlowsheetMachine.CureTime ?? 0)); }
        }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
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