// Developer Express Code Central Example:
// How to create a custom GridControl that represents columns horizontally in a way similar to the WinForms VerticalGrid control
// 
// This example demonstrates how to create a GridControl descendant with
// horizontally oriented columns.
// To use it, simply add the
// VerticalGridControl.xaml and VerticalGridControl.xaml.cs files in your
// project.
// 
// In addition, this example demonstrates how to customize grid cells
// using data templates.
// 
// You can find sample updates and versions for different programming languages here:
// http://www.devexpress.com/example=E4630

using DevExpress.Data;
using DevExpress.Xpf.Editors.Settings;
using DevExpress.Xpf.Grid;
using System;
using System.Collections;
using System.Collections.ObjectModel;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Reflection;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;

namespace dxExample.VGrid
{
    public partial class VerticalGridControl : GridControl
    {
        INotifyCollectionChanged backItemsSourceEvents;

        object InternalItemsSource
        {
            get { return base.ItemsSource; }
            set { base.ItemsSource = value; }
        }
        GridColumnCollection InternalColumns
        {
            get { return base.Columns; }
        }

        public VerticalRowCollection Rows { get; set; }
        public bool AutoPopulateRows
        {
            get { return (bool)GetValue(AutoPopulateRowsProperty); }
            set { SetValue(AutoPopulateRowsProperty, value); }
        }
        public new object ItemsSource
        {
            get { return (object)GetValue(ItemsSourceProperty); }
            set { SetValue(ItemsSourceProperty, value); }
        }

        public VerticalGridControl()
        {
            InitializeComponent();
            InitializeRowsCollection();
            SubscribeItemsSourcePropertyChanged();
        }

        void InitializeRowsCollection()
        {
            Rows = new VerticalRowCollection();
            Rows.CollectionChanged += OnRowsCollectionChanged;
        }
        void UpdateRowsCollection()
        {
            if (AutoPopulateRows)
            {
                PopulateRows();
            }
        }
        void SubscribeItemsSourcePropertyChanged()
        {
            DependencyPropertyDescriptor itemsSourceDropertyDescriptor = DependencyPropertyDescriptor.FromProperty(VerticalGridControl.ItemsSourceProperty, typeof(VerticalGridControl));
            itemsSourceDropertyDescriptor.AddValueChanged(this, new EventHandler(OnItemsSourcePropertyChanged));
        }
        void UpdateInternalColumns()
        {
            ICollection itemsSource = (ItemsSource as ICollection);
            if (itemsSource == null)
            {
                Columns.Clear();
                return;
            }
            Columns.BeginUpdate();
            int columnsCount = itemsSource.Count;
            if (InternalColumns.Count == columnsCount) return;
            int delta = columnsCount - InternalColumns.Count;
            if (columnsCount > InternalColumns.Count)
            {
                for (int i = InternalColumns.Count; i < columnsCount; i++)
                {
                    InternalColumns.Add(new GridColumn() { FieldName = i.ToString(), UnboundType = UnboundColumnType.Object });
                }
            }
            else {
                for (int i = InternalColumns.Count - 1; i >= columnsCount; i--)
                {
                    InternalColumns.RemoveAt(i);
                }
            }
            Columns.EndUpdate();
        }
        void UpdateItemsSourceEventsSubscription()
        {
            if (backItemsSourceEvents != null)
            {
                backItemsSourceEvents.CollectionChanged -= OnItemsSourceCollectionChanged;
            }
            if (!(ItemsSource is INotifyCollectionChanged)) return;
            INotifyCollectionChanged itemsSourceEvents = (ItemsSource as INotifyCollectionChanged);
            itemsSourceEvents.CollectionChanged += OnItemsSourceCollectionChanged;
            backItemsSourceEvents = itemsSourceEvents;
        }
        void PopulateRows()
        {
            IEnumerable itemsSource = (ItemsSource as IEnumerable);
            if (itemsSource == null) return;
            IEnumerator itemsSourceEnumerator = itemsSource.GetEnumerator();
            itemsSourceEnumerator.MoveNext();
            object item = itemsSourceEnumerator.Current;
            if (item == null) return;
            PropertyInfo[] itemProps = item.GetType().GetProperties();
            for (int i = 0; i < itemProps.Length; i++)
            {
                Rows.Add(VerticalRowData.FromPropertyInfo(itemProps[i]));
            }
        }
        void OnRowsCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            InternalItemsSource = Rows;
        }
        void OnItemsSourcePropertyChanged(object sender, EventArgs e)
        {
            UpdateInternalColumns();
            UpdateRowsCollection();
            UpdateItemsSourceEventsSubscription();
        }
        void OnItemsSourceCollectionChanged(object sender, NotifyCollectionChangedEventArgs e)
        {
            if (e.Action == NotifyCollectionChangedAction.Add || e.Action == NotifyCollectionChangedAction.Remove)
            {
                UpdateInternalColumns();
            }
        }
        void OnProcessUnboundColumnData(object sender, GridColumnDataEventArgs e)
        {
            IList itemsSource = (ItemsSource as IList);
            if (itemsSource == null) return;
            VerticalRowData row = Rows[e.ListSourceRowIndex];
            object item = itemsSource[Convert.ToInt32(e.Column.FieldName)];
            PropertyInfo itemProperty = item.GetType().GetProperty(row.RowName);
            if (itemProperty == null) return;
            if (e.IsGetData)
            {
                e.Value = itemProperty.GetValue(item);
            }
            if (e.IsSetData)
            {
                itemProperty.SetValue(item, e.Value);
            }
        }

        public static readonly DependencyProperty AutoPopulateRowsProperty = DependencyProperty.Register("AutoPopulateRows", typeof(bool), typeof(VerticalGridControl), new PropertyMetadata(false));
        public static new readonly DependencyProperty ItemsSourceProperty = DependencyProperty.Register("ItemsSource", typeof(object), typeof(VerticalGridControl), new PropertyMetadata(null));
    }
    public class BottomIndicatorRowVisibilityConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (values.Count() < 2)
                return Visibility.Collapsed;
            if (!((values[0] is int) && (values[1] is int)))
                return Visibility.Collapsed;
            return ((int)values[0]) > ((int)values[1]) ? Visibility.Visible : Visibility.Collapsed;
        }
        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
    public class DefaultCellTemplateSelector : DataTemplateSelector
    {
        public override DataTemplate SelectTemplate(object item, DependencyObject container)
        {
            VerticalRowData row = ((item as EditGridCellData).RowData.Row as VerticalRowData);
            if (row.CellTemplate == null) return base.SelectTemplate(item, container);
            return row.CellTemplate;
        }
    }
    public class VerticalRowData : DependencyObject
    {
        public string RowName { get; set; }
        public DataTemplate CellTemplate
        {
            get { return (DataTemplate)GetValue(CellTemplateProperty); }
            set { SetValue(CellTemplateProperty, value); }
        }

        public static readonly DependencyProperty CellTemplateProperty = DependencyProperty.Register("CellTemplate", typeof(DataTemplate), typeof(VerticalRowData), new PropertyMetadata(null));
        public static VerticalRowData FromPropertyInfo(PropertyInfo info)
        {
            return new VerticalRowData() { RowName = info.Name };
        }
    }
    public class VerticalRowCollection : ObservableCollection<VerticalRowData>
    {
        protected override void InsertItem(int index, VerticalRowData item)
        {
            int existsIndex = IndexOf(item.RowName);
            if (existsIndex > -1)
            {
                if (Items[existsIndex].CellTemplate != null) return;
                Items[existsIndex].CellTemplate = item.CellTemplate;
                return;
            }
            base.InsertItem(index, item);
        }

        int IndexOf(string rowName)
        {
            for (int i = 0; i < Items.Count; i++)
            {
                if (Items[i].RowName == rowName) return i;
            }
            return -1;
        }
    }
}