using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5._5
{
    internal class Dynamic
    {
        static void Main()
        {
            dynamic target = "yueyi";
            dynamic arg = "yue";
            Boolean result = target.Contains(arg);
            Console.WriteLine(result);
        }
    }
}
