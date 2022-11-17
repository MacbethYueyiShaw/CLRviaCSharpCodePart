using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tools;
using System.Threading;
namespace CompareReadAndWrite
{
    class Entry
    {
        static Boolean mBoolval = false;
        static void Main()
        {
            using (new Tools.OperationTimer("read to check if modify local variable"))
            {
                Boolean a = false;
                for (Int32 i = 0; i < 10000; i++)
                {
                    if (!a) a = true;
                }
            }
            using (new Tools.OperationTimer("modify local variable without check"))
            {
                Boolean a = false;
                for (Int32 i = 0; i < 10000; i++)
                {
                    a = true;
                }
            }
            using (new Tools.OperationTimer("read to check if modify static member variable"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    if (!mBoolval) mBoolval = true;
                }
            }
            using (new Tools.OperationTimer("modify local variable static member without check"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    mBoolval = true;
                }
            }
            var someclass = new SomeClass();
            using (new Tools.OperationTimer("read to check if modify member variable"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    if (!someclass.mBoolval1) someclass.mBoolval1 = true;
                }
            }
            using (new Tools.OperationTimer("modify member variable without check"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    someclass.mBoolval1 = true;
                }
            }
            using (new Tools.OperationTimer("read to check if modify member variable"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    if (someclass.intval!=123) someclass.intval = 123;
                }
            }
            using (new Tools.OperationTimer("modify member variable without check"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    someclass.intval = 123;
                }
            }
            using (new Tools.OperationTimer("read to check if modify member variable"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    if (someclass.mString != "asdawdawdae") someclass.mString = "asdawdawdae";
                }
            }
            using (new Tools.OperationTimer("modify member variable without check"))
            {
                for (Int32 i = 0; i < 10000; i++)
                {
                    someclass.mString = "asdawdawdae";
                }
            }
            Thread.Sleep(10000);
        }
    }
    class SomeClass
    {
        public Boolean mBoolval1 = false;
        public Int32 intval = 0;
        public String mString = "123asdsaddddd";
    }
}
