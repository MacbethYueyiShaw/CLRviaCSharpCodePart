using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Project1
{
    internal class AnonymousType
    {
        static void Main()
        {
            var AnonymousObject = new { Name = "name", age = 123 };
            Console.WriteLine(AnonymousObject.GetType());
            Console.WriteLine(AnonymousObject.ToString());
            Type type = AnonymousObject.GetType();
            var AnonymousObject2 = new { Name = "name", age = 123 , Value = AnonymousObject };
            Console.WriteLine(AnonymousObject2.GetType());
            Console.WriteLine(AnonymousObject2.ToString());
            var AnonymousObject3 = new { Name = "name", age = 123 };
            Console.WriteLine(AnonymousObject3.GetType());
            Console.WriteLine(AnonymousObject3.ToString());
        }
    }
}
