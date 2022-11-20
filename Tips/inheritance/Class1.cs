using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace inheritance
{
    internal class Class1
    {
        protected Class1()
        {
            Console.WriteLine("parent ctor");
        }
    }
    internal class Class2 : Class1
    {
        protected Class2()
        {
            Console.WriteLine("child ctor");
        }
    }
    internal class Class3 : Class2
    {
        public Class3()
        {
            Console.WriteLine("child ctor");
        }
    }
    class entry
    {
        static void Main()
        {
            Class3 class3 = new Class3();
        }
    }
}
