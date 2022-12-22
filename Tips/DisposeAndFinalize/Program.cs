using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DisposeAndFinalize
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Go();
            GC.Collect();
            Console.WriteLine("press any key to exit");
            Console.ReadLine();
        }
        static void Go()
        {
            SomeClass a = new SomeClass(12);
            OtherClass b = new OtherClass(13);
            a.Log();
            b.Log();
            a = null;//Dispose will never be called if we don't call it manually
            b = null;
            //GC.Collect();
        }
    }
    class SomeClass : IDisposable
    {
        int mIntValue;
        private bool disposedValue;
        public SomeClass(int x)
        {
            mIntValue = x;
        }
        public void Log()
        {
            Console.WriteLine(mIntValue);
        }
        protected virtual void Dispose(bool disposing)
        {
            Console.WriteLine("Dispose({0}) is called", disposing);
            if (!disposedValue)
            {
                if (disposing)
                {
                    // TODO: dispose managed state (managed objects)
                }

                // TODO: free unmanaged resources (unmanaged objects) and override finalizer
                // TODO: set large fields to null
                disposedValue = true;
            }
        }

        // // TODO: override finalizer only if 'Dispose(bool disposing)' has code to free unmanaged resources
        ~SomeClass()
        {
            Console.WriteLine("~SomeClass() is called");
            // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
            Dispose(disposing: false);
        }

        public void Dispose()
        {
            // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
            Console.WriteLine("Dispose() is called");
            Dispose(disposing: true);
            GC.SuppressFinalize(this);
        }
    }
    class OtherClass
    {
        int mIntValue;
        private bool disposedValue;
        public OtherClass(int x)
        {
            mIntValue = x;
        }
        public void Log()
        {
            Console.WriteLine(mIntValue);
        }
        ~OtherClass()
        {
            Console.WriteLine("~OtherClass() is called");
        }
    }
}
