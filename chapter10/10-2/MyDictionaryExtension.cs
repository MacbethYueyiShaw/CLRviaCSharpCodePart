using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _10_2
{
    public static class MyDictionaryExtension
    {
        internal static dynamic IndexOf(this MyDictionary mdic,Int32 key)
        {
            return new { num = mdic.Get_mNums()[key],str = mdic.Get_mStrings()[key] };
        }

    }
    internal class Entry
    {
        static void Main()
        {
            var dic = new MyDictionary(new Int64[] { 1, 2, 3, 4, 5 }, new String[] { "aa", "bb", "cc", "dd", "ee" });
            //test override ToString.
            Console.WriteLine(dic.ToString());
            //test this[] override method
            Console.WriteLine(dic[0]);//don't forget import Microsoft.CSharp because this[] return a dynamic
            try
            {
                Console.WriteLine(dic[5]);//test IndexOutOfRangeException
            }
            catch(Exception e)
            {
                Console.WriteLine(e.ToString());//log error
            }
            //test Extension method
            Console.WriteLine(dic.IndexOf(1));
            //test IEnumerable Interface method
            foreach (var item in dic)//when controlflow goto this line, it will create a temporary IEnumerator for MyDictionary
            {
                Console.WriteLine(item);
            }
        }
    }
}
