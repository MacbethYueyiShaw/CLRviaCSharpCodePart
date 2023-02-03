using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SingletonPattern
{

    class Program
    {
        public static void Main()
        {
            Singleton.Instance().DoSomething();
        }
    }
    sealed class Singleton : IDisposable
    {
        private bool disposedValue;
        static readonly Singleton mInstance = new Singleton();
        SomeClass sc = new SomeClass();

        private Singleton() { }

        public static Singleton Instance()
        {
            return mInstance;
        }

        public void DoSomething()
        {
            Console.WriteLine("calling DoSomething() in Singleton");
        }

        private void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                Console.WriteLine("calling Dispose({0}) in Singleton", disposing);
                if (disposing)
                {
                    // TODO: dispose managed state (managed objects)
                }

                // TODO: free unmanaged resources (unmanaged objects) and override finalizer
                // TODO: set large fields to null
                disposedValue = true;
            }
        }

        // TODO: override finalizer only if 'Dispose(bool disposing)' has code to free unmanaged resources
        ~Singleton()
        {
            // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
            Dispose(disposing: false);
        }

        public void Dispose()
        {
            // Do not change this code. Put cleanup code in 'Dispose(bool disposing)' method
            Dispose(disposing: true);
            GC.SuppressFinalize(this);
        }
    }
    sealed class SomeClass
    {
        ~SomeClass()
        {
            Console.WriteLine("calling ~SomeClass() in SomeClass");
        }
    }
}
