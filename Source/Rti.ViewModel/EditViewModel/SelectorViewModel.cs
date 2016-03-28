﻿using System;
using System.Collections.ObjectModel;

namespace Rti.ViewModel.EditViewModel
{
    public class SelectorViewModel<TItem>: BaseViewModel
    {
        private TItem _selectedItem;
        private string _selectorText;
        private ObservableCollection<TItem> _selectorItems;

        public ObservableCollection<TItem> SelectorItems
        {
            get { return _selectorItems; }
            set
            {
                if (Equals(value, _selectorItems)) return;
                _selectorItems = value;
                OnPropertyChanged();
            }
        }

        public TItem SelectedItem
        {
            get { return _selectedItem; }
            set
            {
                if (Equals(value, _selectedItem)) return;
                _selectedItem = value;
                OnSelectedItemChanged();
                OnPropertyChanged();
            }
        }

        public string SelectorText
        {
            get { return _selectorText; }
            set
            {
                if (value == _selectorText) return;
                _selectorText = value;
                OnSelectorTextChanged();
                OnPropertyChanged();
            }
        }

        public event EventHandler SelectedItemChanged;
        public event EventHandler SelectorTextChanged;

        private void OnSelectedItemChanged()
        {
            if (SelectedItemChanged != null)
                SelectedItemChanged(this, EventArgs.Empty);
        }

        private void OnSelectorTextChanged()
        {
            if (SelectorTextChanged != null)
                SelectorTextChanged(this, EventArgs.Empty);
        }

    }
}
