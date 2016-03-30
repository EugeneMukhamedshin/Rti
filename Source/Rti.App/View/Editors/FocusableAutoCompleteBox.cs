using System.Windows.Controls;
using System.Windows.Input;

namespace Rti.App.View.Editors
{
    public class FocusableAutoCompleteBox: AutoCompleteBox
    {
        public bool HandleEnterKey { get; set; }

        public override void OnApplyTemplate()
        {
            base.OnApplyTemplate();
            var textbox = Template.FindName("Text", this) as TextBox;
            if (textbox != null)
            {
                textbox.LostFocus += Textbox_LostFocus;
                textbox.Focus();
            }
        }

        private void Textbox_LostFocus(object sender, System.Windows.RoutedEventArgs e)
        {
            //if (SelectedItem == null && !string.IsNullOrEmpty(Text))
            //    Text = null;
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            base.OnKeyDown(e);
            if (e.Key == Key.Enter && HandleEnterKey && SelectedItem != null)
                e.Handled = false;
        }
    }
}
