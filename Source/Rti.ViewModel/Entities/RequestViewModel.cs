using System;
using System.Xml.Linq;

namespace Rti.ViewModel.Entities
{
    public partial class RequestViewModel
    {
        public bool IsWorkStarted
        {
            get { return WorkStartDate.HasValue; }
            set
            {
                if (value)
                    WorkStartDate = DateTime.Today;
                else
                    WorkStartDate = null;
            }
        }

        public decimal? SumWithNds { get { return Sum.HasValue ? Sum*(decimal)1.18 : null; } }

        public string FullName { get { return string.Format("Счет №{0} от {1:dd.MM.yyyy}г.", Number, RegDate); } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "WorkStartDate")
                OnPropertyChanged("IsWorkStarted");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("SumWithNds", SumWithNds.ToString()));
        }
    }
}