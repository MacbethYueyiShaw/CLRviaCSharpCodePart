using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace _11_1
{
    internal class MyEventArgs : EventArgs
    {
        private readonly String msg;
        public MyEventArgs(String msg)
        {
            this.msg = msg;
        }
    }
    internal static class EventArgExtensions
    {
        public static void Raise<TEventArg>(this TEventArg e, Object sender, ref EventHandler<TEventArg> eventDelegate)
        {
            EventHandler<TEventArg> tmp = Volatile.Read(ref eventDelegate);
            if (tmp != null)
            {
                tmp.Invoke(sender, e);
            }
        }
    }
    internal class MyEventManager
    {
        public event EventHandler<MyEventArgs> myevent;
        protected virtual void OnMyEventTrigger(MyEventArgs e)
        {
            //version 1 : thread unsafe
            //if (myevent != null) myevent.Invoke(this, e);

            //version 2 : thread unsafe in theoretically because tmp maybe removed when compiler optimizing this code,
            //but in fact JIT will remain tmp because JIT "respect" those invariant that won't cause extra read/write to heap memory
            //thus, in version 1 "myevent" was read only once and so do things happened in version 2, JIT will not remove tmp.
            /*EventHandler<MyEventArgs> tmp = myevent;
            if (tmp != null) tmp.Invoke(this, e);*/

            //version 3 : thread safe
            EventHandler<MyEventArgs> tmp = Volatile.Read(ref myevent);
            if (tmp != null)
            {
                tmp.Invoke(this, e);
            }
        }
        //version 4 : thread safe, we can also implement in extension method
        protected virtual void OnMyEventTriggerSafely(MyEventArgs e)
        {
            e.Raise(this, ref myevent);
        }
        public void ProduceAEvent(MyEventArgs e)
        {
            OnMyEventTriggerSafely(e);
        }
    }
    internal class Subscriber
    {
        public void SubscribedNews(Object sender, MyEventArgs e)
        {
            Console.WriteLine("{0}\n",e.ToString());
        }
    }
    internal class Entry
    {
        static void Main()
        {
            MyEventManager myEventManager = new MyEventManager();
            Subscriber subscriber = new Subscriber();
            myEventManager.myevent += subscriber.SubscribedNews;
        }
    }
}
