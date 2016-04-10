using System;
using System.Collections.Generic;
using System.Linq;

namespace Rti.ViewModel
{
    public class ReleasableObjectContext
    {
        private static ReleasableObjectContext _context;
        private readonly Stack<IDisposable> _disposables = new Stack<IDisposable>();

        public static void AddDisposable(IDisposable disposable)
        {
            if (_context == null)
                _context = new ReleasableObjectContext();
            _context._disposables.Push(disposable);
        }

        public static void Release()
        {
            if (_context == null)
                return;
            while (_context._disposables.Any())
            {
                var disposable = _context._disposables.Pop();
                disposable.Dispose();
            }
        }
    }
}