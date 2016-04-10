using System;
using System.Runtime.InteropServices;

namespace Rti.ViewModel
{
    public class ReleasableObject<T> : IDisposable where T : class
    {
        public T Object { get; set; }
        private readonly Action<T> _releaseAction;

        public ReleasableObject(T o, Action<T> releaseAction)
        {
            Object = o;
            _releaseAction = releaseAction;
        }

        public void Dispose()
        {
            if (_releaseAction != null)
                _releaseAction(Object);
            Release();
            Object = null;
        }

        private void Release()
        {
            try { while (Marshal.ReleaseComObject(Object) > 0) { } }
            finally { Object = null; }
        }
    }
}