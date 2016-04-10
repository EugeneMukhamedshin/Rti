namespace Rti.ViewModel
{
    public class MessageViewModel : BaseViewModel
    {
        public string Name { get; set; }
        public string Message { get; set; }
        public bool IsError { get; set; }

        public MessageViewModel(string name, string message, bool isError = false)
        {
            Name = name;
            Message = message;
            IsError = isError;
        }
    }
}