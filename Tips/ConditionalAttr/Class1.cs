//#define DEF_DEBUG
//#define Conditional_DEBUG

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Project1
{
    class Class1
    {
        static void Main()
        {
#if DEF_DEBUG
            test1();
#endif
            test2();
        }
#if DEF_DEBUG
        static void test1()
        {
            Console.WriteLine("test1");
        }
#endif
        [Conditional("Conditional_DEBUG")]
        static void test2()
        {
            Console.WriteLine("test2");
        }
    }
}
