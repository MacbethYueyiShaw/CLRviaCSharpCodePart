
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly '1.8'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 下列自定义特性会自动添加，不要取消注释 -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1C 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 37 2E 32 01   // ,Version=v4.7.2.
                                                                                                        00 54 0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73   // .T..FrameworkDis
                                                                                                        70 6C 61 79 4E 61 6D 65 14 2E 4E 45 54 20 46 72   // playName..NET Fr
                                                                                                        61 6D 65 77 6F 72 6B 20 34 2E 37 2E 32 )          // amework 4.7.2
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module '1.8.dll'
// MVID: {53BDF939-0893-476D-B1FE-7D30316A062F}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x050C0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed beforefieldinit _1._8.Test
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Reflection.DefaultMemberAttribute::.ctor(string) = ( 01 00 04 49 74 65 6D 00 00 )                      // ...Item..
  .field private class [mscorlib]System.EventHandler AnEvent
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Test::.ctor

  .method family hidebysig virtual instance void 
          Finalize() cil managed
  {
    .override [mscorlib]System.Object::Finalize
    // 代码大小       13 (0xd)
    .maxstack  1
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  leave.s    IL_000c

    }  // end .try
    finally
    {
      IL_0004:  ldarg.0
      IL_0005:  call       instance void [mscorlib]System.Object::Finalize()
      IL_000a:  nop
      IL_000b:  endfinally
    }  // end handler
    IL_000c:  ret
  } // end of method Test::Finalize

  .method public hidebysig specialname static 
          bool  op_Equality(class _1._8.Test t1,
                            class _1._8.Test t2) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Test::op_Equality

  .method public hidebysig specialname static 
          bool  op_Inequality(class _1._8.Test t1,
                              class _1._8.Test t2) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Test::op_Inequality

  .method public hidebysig specialname static 
          class _1._8.Test  op_Addition(class _1._8.Test t1,
                                        class _1._8.Test t2) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init ([0] class _1._8.Test V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Test::op_Addition

  .method public hidebysig specialname instance string 
          get_Aproperty() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Test::get_Aproperty

  .method public hidebysig specialname instance void 
          set_Aproperty(string 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Test::set_Aproperty

  .method public hidebysig specialname instance string 
          get_Item(int32 x) cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  1
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldnull
    IL_0002:  stloc.0
    IL_0003:  br.s       IL_0005

    IL_0005:  ldloc.0
    IL_0006:  ret
  } // end of method Test::get_Item

  .method public hidebysig specialname instance void 
          set_Item(int32 x,
                   string 'value') cil managed
  {
    // 代码大小       2 (0x2)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ret
  } // end of method Test::set_Item

  .method private hidebysig specialname instance void 
          add_AnEvent(class [mscorlib]System.EventHandler 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [mscorlib]System.EventHandler V_0,
             class [mscorlib]System.EventHandler V_1,
             class [mscorlib]System.EventHandler V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.EventHandler _1._8.Test::AnEvent
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Combine(class [mscorlib]System.Delegate,
                                                                                            class [mscorlib]System.Delegate)
    IL_0010:  castclass  [mscorlib]System.EventHandler
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [mscorlib]System.EventHandler _1._8.Test::AnEvent
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.EventHandler>(!!0&,
                                                                                                                          !!0,
                                                                                                                          !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method Test::add_AnEvent

  .method private hidebysig specialname instance void 
          remove_AnEvent(class [mscorlib]System.EventHandler 'value') cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       41 (0x29)
    .maxstack  3
    .locals init (class [mscorlib]System.EventHandler V_0,
             class [mscorlib]System.EventHandler V_1,
             class [mscorlib]System.EventHandler V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldfld      class [mscorlib]System.EventHandler _1._8.Test::AnEvent
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  stloc.1
    IL_0009:  ldloc.1
    IL_000a:  ldarg.1
    IL_000b:  call       class [mscorlib]System.Delegate [mscorlib]System.Delegate::Remove(class [mscorlib]System.Delegate,
                                                                                           class [mscorlib]System.Delegate)
    IL_0010:  castclass  [mscorlib]System.EventHandler
    IL_0015:  stloc.2
    IL_0016:  ldarg.0
    IL_0017:  ldflda     class [mscorlib]System.EventHandler _1._8.Test::AnEvent
    IL_001c:  ldloc.2
    IL_001d:  ldloc.1
    IL_001e:  call       !!0 [mscorlib]System.Threading.Interlocked::CompareExchange<class [mscorlib]System.EventHandler>(!!0&,
                                                                                                                          !!0,
                                                                                                                          !!0)
    IL_0023:  stloc.0
    IL_0024:  ldloc.0
    IL_0025:  ldloc.1
    IL_0026:  bne.un.s   IL_0007

    IL_0028:  ret
  } // end of method Test::remove_AnEvent

  .event [mscorlib]System.EventHandler AnEvent
  {
    .addon instance void _1._8.Test::add_AnEvent(class [mscorlib]System.EventHandler)
    .removeon instance void _1._8.Test::remove_AnEvent(class [mscorlib]System.EventHandler)
  } // end of event Test::AnEvent
  .property instance string Aproperty()
  {
    .get instance string _1._8.Test::get_Aproperty()
    .set instance void _1._8.Test::set_Aproperty(string)
  } // end of property Test::Aproperty
  .property instance string Item(int32)
  {
    .get instance string _1._8.Test::get_Item(int32)
    .set instance void _1._8.Test::set_Item(int32,
                                            string)
  } // end of property Test::Item
} // end of class _1._8.Test


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 C:\Users\yueyi\Desktop\CLRviaCSharpCodePart\chapter1\1.8\Test.res
