using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace TaskContextParseOrCapture
{
    class TestClass
    {
        public int localCounter = 0;
        public List<Work> localMember = new List<Work>();
        
        public void TaskGo()
        {
            //Works works = Works.Instance();

            //Task.Run a async method so main thread will not block
            Task.Run(() => DoWorkAsync())
                .ContinueWith(
                (t) =>
                {
                    for (int i = 0; i < 3; i++)
                    {
                        var taskwork = new Work("subtaskwork");
                        taskwork.Do();
                        Works.Instance().Record(false, taskwork);
                        localMember.Add(taskwork);
                        localCounter++;
                        Console.WriteLine($"Subtask localCounter adress: [{MemoryAddress.Get(localCounter)}],localMember adress:[{MemoryAddress.Get(localMember)}]");
                    }
                }
                );
        }
        public void MainGo()
        {
            //simulate rendering work
            for (int i = 0; i < 10; i++)
            {
                Thread.Sleep(1000);
                var mainwork = new Work($"mainwork{i}");
                mainwork.Do();
                Works.Instance().Record(true, mainwork);
                localMember.Add(mainwork);
                localCounter++;
                Console.WriteLine($"Main localCounter adress: [{MemoryAddress.Get(localCounter)}],localMember adress:[{MemoryAddress.Get(localMember)}]");
            }
        }
        public async Task DoWorkAsync()
        {
            await Task.Delay(3000);
            var taskwork = new Work("taskwork");
            taskwork.Do();
            Works.Instance().Record(false, taskwork);
            localMember.Add(taskwork);
            localCounter++;
            Console.WriteLine($"Asynctask localCounter adress: [{MemoryAddress.Get(localCounter)}],localMember adress:[{MemoryAddress.Get(localMember)}]");
        }
    }

    class Works
    {
        static Works mInstance = new Works();
        public static Works Instance()
        {
            return mInstance;
        }
        private Works() 
        { 
        }
        static Works()
        {
        }
        //value tpye
        int WorkCounter = 0;
        int MainWork = 0;
        int TaskWork = 0;
        //ref type
        List<Work> MainWorkList = new List<Work>();
        List<Work> TaskWorkList = new List<Work>();

        public void Record(bool isMain, Work work)
        {
            if (isMain)
            {
                MainWork++;
                MainWorkList.Add(work);
            }
            else
            {
                TaskWork ++;
                TaskWorkList.Add(work);
            }
            Interlocked.Increment(ref WorkCounter);
        }
        public void Log()
        {
            Console.WriteLine($"WorkCounter[{WorkCounter}], MainWork[{MainWork}], TaskWork[{TaskWork}]");
            Console.WriteLine("MainTaskList:");
            Console.WriteLine(MainWorkList.ToString());
            Console.WriteLine("TaskWorkList:");
            Console.WriteLine(TaskWorkList.ToString());
        }
    }

    class Work
    {
        static int idcounter = 0;
        int workId;
        string workName;
        public Work(string name)
        {
            Interlocked.Increment(ref idcounter);
            workId = idcounter;
            workName = name;
        }
        public void Do()
        {
            Console.WriteLine($"Thread[{Thread.CurrentThread.ManagedThreadId}] do work: id:[{workId}]  name[{workName}]");
        }
    }

    class Program
    {
        public static void Main()
        {
            TestClass entry = new TestClass();
            entry.TaskGo();
            entry.MainGo();

            Console.WriteLine("Print all works recorded in singleton works array:");
            Works.Instance().Log();
            Console.WriteLine("Print all works recorded in localmember works array:");
            Console.WriteLine($"count:[{entry.localMember.Count}]");
            Console.WriteLine($"LocalCounter:[{entry.localCounter}]");
            Console.WriteLine("press any key to exit.");
            Console.ReadLine();
        }
    }
    public static class MemoryAddress
    {
        public static string Get(object a)
        {
            GCHandle handle = GCHandle.Alloc(a, GCHandleType.Weak);
            IntPtr pointer = GCHandle.ToIntPtr(handle);
            handle.Free();
            return "0x" + pointer.ToString("X");
        }
    }
}
