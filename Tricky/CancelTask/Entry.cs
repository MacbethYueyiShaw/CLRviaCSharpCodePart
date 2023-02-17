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
            try
            {
                Test().Wait();
            }
            catch(Exception e)
            {
                Console.WriteLine("Main catch exception", e.ToString());
            }
            finally
            {
                Console.WriteLine("Main func return");
            }
        }
        public static async Task Test()
        {
            var cts = new CancellationTokenSource();
            var ct = cts.Token;

            //1.use task method to parse exception
            /*var mInitializationTask = Task.Run(
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
                , ct);*/
            try
            {
                _ = Task.Run(
                    () =>
                    {
                        //call cancel after specific time
                        Thread.Sleep(2000);
                        Console.WriteLine("Call task cancel.");
                        cts.Cancel();
                    }
                    );

                //1.Task method to wait
                //cts.Cancel();
                //Task.WaitAll(new Task[] { mInitializationTask, mConcurrentTask });
                //mConcurrentTask.Wait();

                //2.await method
                await Task.Run(
                 () =>
                 {
                     ct.ThrowIfCancellationRequested();
                     Console.WriteLine("mInitializationTask start");
                     //simulate short-time task
                     Thread.Sleep(1000);
                     Console.WriteLine("mInitializationTask finish");
                 }
                 , ct);
                await Task.Run(
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
            }
            catch (TaskCanceledException e)//this exception thrown when run a task whose canceltoken already have benn canceled 
            {
                //try hold TaskCanceledException in cancel part
                Console.WriteLine("Test: catch TaskCanceledException" + e.ToString());
                throw;
            }
            catch (AggregateException e)//this exception thrown when a task throw a exception
            {
                //try hold AggregateException in cancel part
                Console.WriteLine("Test: catch AggregateException in main thread cancel code part" + e.ToString());
                throw;
            }
        }
    }
    
}
