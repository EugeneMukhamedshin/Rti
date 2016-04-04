namespace Rti.App.View.Editors.Behaviour
{
    public class TextBoxNumberBehaviour : TextBoxInputRegExBehaviour
    {
        private int _floatDigitsCount;

        public int FloatDigitsCount
        {
            get { return _floatDigitsCount; }
            set
            {
                _floatDigitsCount = value;
                SetRegularExpression();
            }
        }

        private void SetRegularExpression()
        {
            RegularExpression = @"^([-+]?[0-9]*[\.,]?([0-9]{0," + FloatDigitsCount + "}))$";
        }

        public TextBoxNumberBehaviour()
        {
            FloatDigitsCount = 2;
            MaxLength = 24;
            SetRegularExpression();
        }
    }
}