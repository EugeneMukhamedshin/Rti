using System;

namespace Rti.ViewModel
{
    public interface IWindowCloser
    {
        Action<BaseViewModel, Boolean?> CloseWindow { get; set;  }
    }
}