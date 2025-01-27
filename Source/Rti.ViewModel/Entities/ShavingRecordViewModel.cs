﻿using System;
using System.Xml.Linq;

namespace Rti.ViewModel.Entities
{
    public partial class ShavingRecordViewModel
    {
        public decimal? Salary { get { return InputCount*(Drawing == null ? 0 : Drawing.ShavingPrice); } }

        protected override void OnPropertyChanged(string propertyName = null)
        {
            base.OnPropertyChanged(propertyName);
            if (propertyName == "InputCount" || propertyName == "Drawing")
                OnPropertyChanged("Salary");
        }

        public override void CustomFillXElement(XElement element)
        {
            base.CustomFillXElement(element);
            element.Add(new XAttribute("Salary", Salary ?? 0));
        }
    }
}