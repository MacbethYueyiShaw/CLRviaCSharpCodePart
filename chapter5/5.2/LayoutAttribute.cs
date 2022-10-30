using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace _5._2
{
    internal class LayoutAttribute
    {
        //RefType use Auto Layout defualtly
        class RefType_Auto
        {
            private readonly Byte m_b;
            private readonly Int16 m_x1;
            private readonly Int32 m_x2;
        }
        [StructLayout(LayoutKind.Sequential)]
        class RefType_Sequential
        {
            private readonly Byte m_b;
            private readonly Int16 m_x1;
            private readonly Int32 m_x2;
        }
        [StructLayout(LayoutKind.Auto)]
        internal struct ValType_Auto
        {
            private readonly Byte m_b;
            private readonly Int16 m_x1;
            private readonly Int32 m_x2;
        }
        //ValType use Sequential Layout defualtly
        [StructLayout(LayoutKind.Sequential)]
        internal struct ValType_Sequential
        {
            private readonly Byte m_b;
            private readonly Int16 m_x1;
            private readonly Int32 m_x2;
        }
        [StructLayout(LayoutKind.Explicit)]
        internal struct ValType_Explicit1
        {
            [FieldOffset(0)]
            private readonly Byte m_b;
            [FieldOffset(2)]
            private readonly Int16 m_x1;
            [FieldOffset(20)]
            private readonly Int32 m_x2;
        }
        [StructLayout(LayoutKind.Explicit)]
        internal struct ValType_Explicit2
        {
            [FieldOffset(0)]
            public Byte m_b;
            [FieldOffset(0)]
            public readonly Int16 m_x1;
            [FieldOffset(0)]
            public Int32 m_x2;
        }
        static void Main()
        {
            //notice that Marshal.Sizeof cannot parse an unmanaged structure, in this case, type with keyword "LayoutKind.Auto" cannot be parsed.
            RefType_Sequential o1 = new RefType_Sequential();
            Console.WriteLine("RefType_Sequential size:" + Marshal.SizeOf(o1).ToString());
            /*ValType_Auto o2 = new ValType_Auto();
            Console.WriteLine("ValType_Auto size:" + Marshal.SizeOf(o2).ToString())*/;
            ValType_Sequential o3 = new ValType_Sequential();
            Console.WriteLine("ValType_Sequential size:" + Marshal.SizeOf(o3).ToString());
            ValType_Explicit1 o4 = new ValType_Explicit1();
            Console.WriteLine("ValType_Explicit1 size:" + Marshal.SizeOf(o4).ToString());
            ValType_Explicit2 o5 = new ValType_Explicit2();
            Console.WriteLine("ValType_Explicit2 size:" + Marshal.SizeOf(o5).ToString());

            /*
             OUTPUT:
             RefType_Sequential size:8
             ValType_Sequential size:8
             ValType_Explicit1 size:24
             ValType_Explicit2 size:4

            Memory Alignment:
            consider following struct:
                private readonly Byte m_b;
                private readonly Int16 m_x1;
                private readonly Int32 m_x2;
            the length of memory used is 8(bytes)
            and compare to this struct:
                private readonly Byte m_b;
                private readonly Int32 m_x1;
                private readonly Int16 m_x2;
            in this sequnence the length is 12
            while Byte m_b;
                 Int16 m_x1;
                 Int16 m_x2; is 6
            1. assume a X-Bytes value A, it should start at a X*N(N is a integer and >=0) address,
            and finally the struct should be X-times large if the A is the longest type in struct. Consider following:
            byte(size:1,address:0x0),int16(size:2,address:0x2),int64(8,0x8),int16(2,0x16),int32(4,0x20),byte(1,0x24)->24+1->32(8 alignment)

            */

            //we also talk about memory overlapping
            ValType_Explicit2 A = new ValType_Explicit2();
            //ValType_Explicit2 B = new ValType_Explicit2();
            unsafe
            {
                TypedReference tr = __makeref(o1);
                IntPtr ptr = **(IntPtr**)(&tr);
                Console.WriteLine("A.m_b address:" + "0x" + ptr.ToString("X"));
            }
            

            Console.WriteLine("ValType_Explicit2 A:");
            Console.WriteLine("A.m_b:"+A.m_b);
            Console.WriteLine("A.m_x1:"+A.m_x1);
            Console.WriteLine("A.m_x2:"+A.m_x2);
            Console.WriteLine("A.m_b: 0 -> 0x12 (0001 0010)");
            A.m_b = 0x12;
            Console.WriteLine("A.m_b:" + A.m_b);
            Console.WriteLine("A.m_x1:" + A.m_x1);
            Console.WriteLine("A.m_x2:" + A.m_x2);
            
            Console.WriteLine("A.m_x2: 0x12 -> 0x12345678 (0001 0010 0011 0100 0101 0110 0111 1000)");
            A.m_x2 = 0x12345678;
            Console.WriteLine("A.m_b:" + A.m_b);
            Console.WriteLine("A.m_x1:" + A.m_x1);
            Console.WriteLine("A.m_x2:" + A.m_x2);

            
        }
    }
}
