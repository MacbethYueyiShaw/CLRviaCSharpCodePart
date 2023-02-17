using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace CancelTask
{
    class Entry
    {
        public static void Main()
        {
            var cts = new CancellationTokenSource();
            var ct = cts.Token;

            var mInitializationTask = Task.Run(
                 () =>
                 {
                     ct.ThrowIfCancellationRequested();
                     Console.WriteLine("mInitializationTask start");
                    //simulate short-time task
                    Thread.Sleep(1000);
                     Console.WriteLine("mInitializationTask finish");
                 }
                 , ct);

            var mConcurrentTask = Task.Run(
                () =>
                {
                    Console.WriteLine("mConcurrentTask start");
                    while (true)
                    {
                        if (ct.IsCancellationRequested)
                        {
                            try
                            {
                                ct.ThrowIfCancellationRequested();
                            }
                            catch (OperationCanceledException e)
                            {
                                Console.WriteLine("catch TaskCanceledException in mConcurrentTask" + e.ToString());
                                throw;
                            }
                            finally
                            {
                                Console.WriteLine("mConcurrentTask finish");
                            }
                        }
                    }
                }
                , ct);

            Thread.Sleep(2000);
            try
            {
                cts.Cancel();
                //Thread.Sleep(2000);
                Task.WaitAll(new Task[] { mInitializationTask, mConcurrentTask });
                //mConcurrentTask.Wait();
            }
            catch (TaskCanceledException e)
            {
                //try hold TaskCanceledException in cancel part
                Console.WriteLine("catch TaskCanceledException in main thread cancel code part" + e.ToString());
            }
            catch (AggregateException e)
            {
                //try hold AggregateException in cancel part
                Console.WriteLine("catch AggregateException in main thread cancel code part" + e.ToString());
            }
        }
    }
    
}
