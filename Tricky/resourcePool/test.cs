using Pooling;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace resourcePool
{
    class Program
    {
        static int PoolSize = 5;

        static void Main(string[] args)
        {
            using (Pool<IFoo> pool = new Pool<IFoo>(PoolSize, p => new PooledFoo(p),
                LoadingMode.Eager, AccessMode.FIFO))
            {
                using (ManualResetEvent finishedEvent = new ManualResetEvent(false))
                {
                    int remaining = 10;
                    for (int i = 0; i < 10; i++)
                    {
                        int q = i;
                        ThreadPool.QueueUserWorkItem(s =>
                        {
                            Console.WriteLine("Thread started: {0}", q);
                            for (int j = 0; j < 50; j++)
                            {
                                //using (IFoo foo = pool.Acquire()) //Note:All worker threads may get blocked here beacause foo and foo2's Acquire op is not atomic
                                using (IFoo foo2 = pool.Acquire())
                                {
                                    //foo.Test();
                                    foo2.Test();
                                }
                            }
                            if (Interlocked.Decrement(ref remaining) == 0)
                            {
                                finishedEvent.Set();
                            }
                        });
                    }
                    finishedEvent.WaitOne();
                }
                Console.WriteLine("Threaded partial load test finished.");
                Console.WriteLine();
            }
            Console.ReadLine();
        }
    }
}
