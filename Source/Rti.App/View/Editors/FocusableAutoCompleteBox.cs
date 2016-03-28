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
            if (textbox != null) textbox.Focus();
        }

        protected override void OnKeyDown(KeyEventArgs e)
        {
            base.OnKeyDown(e);
            if (e.Key == Key.Enter && HandleEnterKey && SelectedItem != null)
                e.Handled = false;
        }
    }
}
