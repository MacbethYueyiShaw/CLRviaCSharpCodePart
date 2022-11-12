using System;
using System.Collections.Generic;
using System.IO;
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

            String myDoc = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            var query =
                from pathname in Directory.GetFiles(myDoc)
                let LastWrite = File.GetLastWriteTime(pathname)
                where LastWrite > (DateTime.Now - TimeSpan.FromDays(365))
                orderby LastWrite
                select new { Path = pathname, LastWrite };
            foreach(var item in query)
            {
                Console.WriteLine(item.ToString());
            }
        }
    }
}
