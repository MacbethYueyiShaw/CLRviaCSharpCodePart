using System;
namespace _2._4
{
    [Obsolete("Rarely-used type")]
    public class RUT
    {
        private int mVariable;
        Boolean mBoolean;
        void privateFunc()
        {
            Console.WriteLine("Call private func in RUT.cs");
        }

        public void Method()
        {
            Console.WriteLine("Call Method in RUT.cs");
        }
    }

}

