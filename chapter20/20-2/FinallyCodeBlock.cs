using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace _20_2
{
    internal class FinallyCodeBlock
    {
        static void Main()
        {
            Try_Block_A();
        }
        static void Try_Block_A()
        {
            try
            {
                Try_Block_B();
            }
            catch (MyException1 e)
            {
                Console.WriteLine(e.ToString());
            }
            finally
            {
                Console.WriteLine("Try_Block_A : Finally excute!");
            }
        }
        static void Try_Block_B()
        {
            try
            {
                Try_Block_C();
            }
            catch (MyException2 e)
            {
                Console.WriteLine(e.ToString());
                throw new MyException1();
            }
            finally
            {
                Console.WriteLine("Try_Block_B : Finally excute!");
            }
        }
        static void Try_Block_C()
        {
            try
            {
                Do_Sth();
            }
            catch(MyException3 e)
            {
                Console.WriteLine(e.ToString());
            }
            finally
            {
                Console.WriteLine("Try_Block_C : Finally excute!");
            }
        }
        static void Do_Sth()
        {
            throw new MyException2();
        }
    }
    public class MyException1 : Exception
    {
    }
    public class MyException2 : Exception
    {

    }
    public class MyException3 : Exception
    {

    }
}
