using System;
using System.Diagnostics;

namespace _4_2
{
    public class A //: A1 this will cause CS0146
    {
        public int id;
    }
    public class A1 : A
    {

    }
    public class A2 : A1
    {

    }
    public class A3 : A2
    {

    }
    public class B
    {

    }
    internal class cast
    {
        public static void Main()
        {
            ParseObject(new A1());
            //ParseObject(new B());//cause cast exception when excuted if we don't do a check in ParseObject

            //call func because it takes time for JIT to compile IL to native code when a new func loaded at the first time
            CheckwithIs(new Object());
            CheckwithAs(new Object());

            Console.WriteLine("Compare performance: parse A");
            CheckwithIs(new A());
            CheckwithAs(new A());
            Console.WriteLine("Compare performance: parse A3");
            CheckwithIs(new A3());
            CheckwithAs(new A3());
        }
        public static void ParseObject(Object o)
        {
            A a = (A)o;
        }
        public static void CheckwithIs(Object o)
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();
            for(int i = 0; i < 100; i++)
            {
                if (o is A)
                {
                    A a = (A)o;
                }
            }
            sw.Stop();
            Console.WriteLine("using is keyword : Elapsed={0}", sw.Elapsed);
        }
        public static void CheckwithAs(Object o)
        {
            Stopwatch sw = new Stopwatch();
            sw.Start();
            for(int i = 0; i < 100; i++)
            {
                A a = o as A;
                if (a == null)
                {
                    Console.WriteLine("using is keyword : a is null");
                }
            }
            sw.Stop();
            Console.WriteLine("using as keyword : Elapsed={0}", sw.Elapsed);
        }
    }
}
/*
OUTPUT:
...
Compare performance: parse A
using is keyword : Elapsed=00:00:00.0000005
using as keyword : Elapsed=00:00:00.0000003
Compare performance: parse A3
using is keyword : Elapsed=00:00:00.0000006
using as keyword : Elapsed=00:00:00.0000003
...
you may noticed that the method using "is" takes nearly twice as long as the one using "as",
this is because the "is" method do a CLR type check in "is" part, and also do the same thing in "A a = o as A",
CLR type check will be called only once in "as" method.
*/
