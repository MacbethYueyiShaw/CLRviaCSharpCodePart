using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace _2._4
{
    [Obsolete("frequently-used type")]
    internal class FUT
    {
        private int mVariable;
        void privateFunc()
        {
            Console.WriteLine("Call private func in FUT.cs");
        }

        public void Method()
        {
            Console.WriteLine("Call Method in FUT.cs");
        }
    }
}
