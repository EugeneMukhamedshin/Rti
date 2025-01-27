﻿using System;
using System.Runtime.Serialization;

namespace Rti.ViewModel
{
    [Serializable]
    public class ValidateException : Exception
    {
        //
        // For guidelines regarding the creation of new exception types, see
        //    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/cpgenref/html/cpconerrorraisinghandlingguidelines.asp
        // and
        //    http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dncscol/html/csharp07192001.asp
        //

        public ValidateException()
        {
        }

        public ValidateException(string message) : base(message)
        {
        }

        public ValidateException(string message, Exception inner) : base(message, inner)
        {
        }

        protected ValidateException(
            SerializationInfo info,
            StreamingContext context) : base(info, context)
        {
        }
    }
}