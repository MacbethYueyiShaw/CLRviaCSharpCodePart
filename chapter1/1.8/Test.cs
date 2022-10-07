using System;
    

namespace _1._8
{
    internal sealed class Test
    {
        public Test() { }
        ~Test() { }
        public static Boolean operator == (Test t1,Test t2)
        {
            return true;
        }
        public static Boolean operator !=(Test t1, Test t2)
        {
            return false;
        }
        public static Test operator +(Test t1, Test t2)
        {
            return null;
        }
        public String Aproperty
        {
            get { return null; }
            set { }
        }
        public String this[Int32 x]
        {
            get { return null; }
            set { }
        }
        event EventHandler AnEvent;
    }
}
