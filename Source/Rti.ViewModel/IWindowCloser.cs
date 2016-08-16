using System;

namespace Rti.ViewModel
{
    public interface IClosable
    {
        bool CanClose();

        Action<Boolean?> Close { get; set;  }
    }
}