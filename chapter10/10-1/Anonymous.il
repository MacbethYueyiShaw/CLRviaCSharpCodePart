
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0




// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly Project1
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- 下列自定义特性会自动添加，不要取消注释 -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 38 01 00 54   // ,Version=v4.8..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 38 )                      // ework 4.8
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module Project1.exe
// MVID: {779FCDF3-54F0-472B-94B5-8919501E22C9}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00020003    //  ILONLY 32BITPREFERRED
// Image base: 0x08F70000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed beforefieldinit '<>f__AnonymousType0`2'<'<Name>j__TPar','<age>j__TPar'>
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 1F 5C 7B 20 4E 61 6D 65 20 3D 20 7B 4E 61   // ...\{ Name = {Na
                                                                                                 6D 65 7D 2C 20 61 67 65 20 3D 20 7B 61 67 65 7D   // me}, age = {age}
                                                                                                 20 7D 01 00 54 0E 04 54 79 70 65 10 3C 41 6E 6F   //  }..T..Type.<Ano
                                                                                                 6E 79 6D 6F 75 73 20 54 79 70 65 3E )             // nymous Type>
  .field private initonly !'<Name>j__TPar' '<Name>i__Field'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly !'<age>j__TPar' '<age>i__Field'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance !'<Name>j__TPar' 
          get_Name() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      !0 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<Name>i__Field'
    IL_0006:  ret
  } // end of method '<>f__AnonymousType0`2'::get_Name

  .method public hidebysig specialname instance !'<age>j__TPar' 
          get_age() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      !1 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<age>i__Field'
    IL_0006:  ret
  } // end of method '<>f__AnonymousType0`2'::get_age

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(!'<Name>j__TPar' Name,
                               !'<age>j__TPar' age) cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      !0 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<Name>i__Field'
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      !1 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<age>i__Field'
    IL_0014:  ret
  } // end of method '<>f__AnonymousType0`2'::.ctor

  .method public hidebysig virtual instance bool 
          Equals(object 'value') cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       67 (0x43)
    .maxstack  3
    .locals init (class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'> V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  beq.s      IL_0041

    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_003e

    IL_000e:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::get_Default()
    IL_0013:  ldarg.0
    IL_0014:  ldfld      !0 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<Name>i__Field'
    IL_0019:  ldloc.0
    IL_001a:  ldfld      !0 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<Name>i__Field'
    IL_001f:  callvirt   instance bool class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::Equals(!0,
                                                                                                                               !0)
    IL_0024:  brfalse.s  IL_003e

    IL_0026:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::get_Default()
    IL_002b:  ldarg.0
    IL_002c:  ldfld      !1 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<age>i__Field'
    IL_0031:  ldloc.0
    IL_0032:  ldfld      !1 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<age>i__Field'
    IL_0037:  callvirt   instance bool class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::Equals(!0,
                                                                                                                              !0)
    IL_003c:  br.s       IL_003f

    IL_003e:  ldc.i4.0
    IL_003f:  br.s       IL_0042

    IL_0041:  ldc.i4.1
    IL_0042:  ret
  } // end of method '<>f__AnonymousType0`2'::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       52 (0x34)
    .maxstack  8
    IL_0000:  ldc.i4     0x90c83e10
    IL_0005:  ldc.i4     0xa5555529
    IL_000a:  mul
    IL_000b:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::get_Default()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      !0 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<Name>i__Field'
    IL_0016:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::GetHashCode(!0)
    IL_001b:  add
    IL_001c:  ldc.i4     0xa5555529
    IL_0021:  mul
    IL_0022:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::get_Default()
    IL_0027:  ldarg.0
    IL_0028:  ldfld      !1 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<age>i__Field'
    IL_002d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::GetHashCode(!0)
    IL_0032:  add
    IL_0033:  ret
  } // end of method '<>f__AnonymousType0`2'::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       98 (0x62)
    .maxstack  7
    .locals init (!'<Name>j__TPar' V_0,
             !'<age>j__TPar' V_1)
    IL_0000:  ldnull
    IL_0001:  ldstr      "{{ Name = {0}, age = {1} }}"
    IL_0006:  ldc.i4.2
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      !0 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<Name>i__Field'
    IL_0014:  stloc.0
    IL_0015:  ldloca.s   V_0
    IL_0017:  dup
    IL_0018:  ldobj      !'<Name>j__TPar'
    IL_001d:  box        !'<Name>j__TPar'
    IL_0022:  brtrue.s   IL_0028

    IL_0024:  pop
    IL_0025:  ldnull
    IL_0026:  br.s       IL_0033

    IL_0028:  constrained. !'<Name>j__TPar'
    IL_002e:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0033:  stelem.ref
    IL_0034:  dup
    IL_0035:  ldc.i4.1
    IL_0036:  ldarg.0
    IL_0037:  ldfld      !1 class '<>f__AnonymousType0`2'<!'<Name>j__TPar',!'<age>j__TPar'>::'<age>i__Field'
    IL_003c:  stloc.1
    IL_003d:  ldloca.s   V_1
    IL_003f:  dup
    IL_0040:  ldobj      !'<age>j__TPar'
    IL_0045:  box        !'<age>j__TPar'
    IL_004a:  brtrue.s   IL_0050

    IL_004c:  pop
    IL_004d:  ldnull
    IL_004e:  br.s       IL_005b

    IL_0050:  constrained. !'<age>j__TPar'
    IL_0056:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_005b:  stelem.ref
    IL_005c:  call       string [mscorlib]System.String::Format(class [mscorlib]System.IFormatProvider,
                                                                string,
                                                                object[])
    IL_0061:  ret
  } // end of method '<>f__AnonymousType0`2'::ToString

  .property instance !'<Name>j__TPar' Name()
  {
    .get instance !'<Name>j__TPar' '<>f__AnonymousType0`2'::get_Name()
  } // end of property '<>f__AnonymousType0`2'::Name
  .property instance !'<age>j__TPar' age()
  {
    .get instance !'<age>j__TPar' '<>f__AnonymousType0`2'::get_age()
  } // end of property '<>f__AnonymousType0`2'::age
} // end of class '<>f__AnonymousType0`2'

.class private auto ansi sealed beforefieldinit '<>f__AnonymousType1`3'<'<Name>j__TPar','<age>j__TPar','<Value>j__TPar'>
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 30 5C 7B 20 4E 61 6D 65 20 3D 20 7B 4E 61   // ..0\{ Name = {Na
                                                                                                 6D 65 7D 2C 20 61 67 65 20 3D 20 7B 61 67 65 7D   // me}, age = {age}
                                                                                                 2C 20 56 61 6C 75 65 20 3D 20 7B 56 61 6C 75 65   // , Value = {Value
                                                                                                 7D 20 7D 01 00 54 0E 04 54 79 70 65 10 3C 41 6E   // } }..T..Type.<An
                                                                                                 6F 6E 79 6D 6F 75 73 20 54 79 70 65 3E )          // onymous Type>
  .field private initonly !'<Name>j__TPar' '<Name>i__Field'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly !'<age>j__TPar' '<age>i__Field'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field private initonly !'<Value>j__TPar' '<Value>i__Field'
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .method public hidebysig specialname instance !'<Name>j__TPar' 
          get_Name() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      !0 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Name>i__Field'
    IL_0006:  ret
  } // end of method '<>f__AnonymousType1`3'::get_Name

  .method public hidebysig specialname instance !'<age>j__TPar' 
          get_age() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      !1 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<age>i__Field'
    IL_0006:  ret
  } // end of method '<>f__AnonymousType1`3'::get_age

  .method public hidebysig specialname instance !'<Value>j__TPar' 
          get_Value() cil managed
  {
    // 代码大小       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      !2 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Value>i__Field'
    IL_0006:  ret
  } // end of method '<>f__AnonymousType1`3'::get_Value

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(!'<Name>j__TPar' Name,
                               !'<age>j__TPar' age,
                               !'<Value>j__TPar' Value) cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       28 (0x1c)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      !0 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Name>i__Field'
    IL_000d:  ldarg.0
    IL_000e:  ldarg.2
    IL_000f:  stfld      !1 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<age>i__Field'
    IL_0014:  ldarg.0
    IL_0015:  ldarg.3
    IL_0016:  stfld      !2 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Value>i__Field'
    IL_001b:  ret
  } // end of method '<>f__AnonymousType1`3'::.ctor

  .method public hidebysig virtual instance bool 
          Equals(object 'value') cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       91 (0x5b)
    .maxstack  3
    .locals init (class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'> V_0)
    IL_0000:  ldarg.1
    IL_0001:  isinst     class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldloc.0
    IL_0009:  beq.s      IL_0059

    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0056

    IL_000e:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::get_Default()
    IL_0013:  ldarg.0
    IL_0014:  ldfld      !0 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Name>i__Field'
    IL_0019:  ldloc.0
    IL_001a:  ldfld      !0 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Name>i__Field'
    IL_001f:  callvirt   instance bool class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::Equals(!0,
                                                                                                                               !0)
    IL_0024:  brfalse.s  IL_0056

    IL_0026:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::get_Default()
    IL_002b:  ldarg.0
    IL_002c:  ldfld      !1 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<age>i__Field'
    IL_0031:  ldloc.0
    IL_0032:  ldfld      !1 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<age>i__Field'
    IL_0037:  callvirt   instance bool class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::Equals(!0,
                                                                                                                              !0)
    IL_003c:  brfalse.s  IL_0056

    IL_003e:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Value>j__TPar'>::get_Default()
    IL_0043:  ldarg.0
    IL_0044:  ldfld      !2 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Value>i__Field'
    IL_0049:  ldloc.0
    IL_004a:  ldfld      !2 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Value>i__Field'
    IL_004f:  callvirt   instance bool class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Value>j__TPar'>::Equals(!0,
                                                                                                                                !0)
    IL_0054:  br.s       IL_0057

    IL_0056:  ldc.i4.0
    IL_0057:  br.s       IL_005a

    IL_0059:  ldc.i4.1
    IL_005a:  ret
  } // end of method '<>f__AnonymousType1`3'::Equals

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       75 (0x4b)
    .maxstack  3
    IL_0000:  ldc.i4     0xea95efd1
    IL_0005:  ldc.i4     0xa5555529
    IL_000a:  mul
    IL_000b:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::get_Default()
    IL_0010:  ldarg.0
    IL_0011:  ldfld      !0 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Name>i__Field'
    IL_0016:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Name>j__TPar'>::GetHashCode(!0)
    IL_001b:  add
    IL_001c:  ldc.i4     0xa5555529
    IL_0021:  mul
    IL_0022:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::get_Default()
    IL_0027:  ldarg.0
    IL_0028:  ldfld      !1 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<age>i__Field'
    IL_002d:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<age>j__TPar'>::GetHashCode(!0)
    IL_0032:  add
    IL_0033:  ldc.i4     0xa5555529
    IL_0038:  mul
    IL_0039:  call       class [mscorlib]System.Collections.Generic.EqualityComparer`1<!0> class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Value>j__TPar'>::get_Default()
    IL_003e:  ldarg.0
    IL_003f:  ldfld      !2 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Value>i__Field'
    IL_0044:  callvirt   instance int32 class [mscorlib]System.Collections.Generic.EqualityComparer`1<!'<Value>j__TPar'>::GetHashCode(!0)
    IL_0049:  add
    IL_004a:  ret
  } // end of method '<>f__AnonymousType1`3'::GetHashCode

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // 代码大小       138 (0x8a)
    .maxstack  7
    .locals init (!'<Name>j__TPar' V_0,
             !'<age>j__TPar' V_1,
             !'<Value>j__TPar' V_2)
    IL_0000:  ldnull
    IL_0001:  ldstr      "{{ Name = {0}, age = {1}, Value = {2} }}"
    IL_0006:  ldc.i4.3
    IL_0007:  newarr     [mscorlib]System.Object
    IL_000c:  dup
    IL_000d:  ldc.i4.0
    IL_000e:  ldarg.0
    IL_000f:  ldfld      !0 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Name>i__Field'
    IL_0014:  stloc.0
    IL_0015:  ldloca.s   V_0
    IL_0017:  dup
    IL_0018:  ldobj      !'<Name>j__TPar'
    IL_001d:  box        !'<Name>j__TPar'
    IL_0022:  brtrue.s   IL_0028

    IL_0024:  pop
    IL_0025:  ldnull
    IL_0026:  br.s       IL_0033

    IL_0028:  constrained. !'<Name>j__TPar'
    IL_002e:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0033:  stelem.ref
    IL_0034:  dup
    IL_0035:  ldc.i4.1
    IL_0036:  ldarg.0
    IL_0037:  ldfld      !1 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<age>i__Field'
    IL_003c:  stloc.1
    IL_003d:  ldloca.s   V_1
    IL_003f:  dup
    IL_0040:  ldobj      !'<age>j__TPar'
    IL_0045:  box        !'<age>j__TPar'
    IL_004a:  brtrue.s   IL_0050

    IL_004c:  pop
    IL_004d:  ldnull
    IL_004e:  br.s       IL_005b

    IL_0050:  constrained. !'<age>j__TPar'
    IL_0056:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_005b:  stelem.ref
    IL_005c:  dup
    IL_005d:  ldc.i4.2
    IL_005e:  ldarg.0
    IL_005f:  ldfld      !2 class '<>f__AnonymousType1`3'<!'<Name>j__TPar',!'<age>j__TPar',!'<Value>j__TPar'>::'<Value>i__Field'
    IL_0064:  stloc.2
    IL_0065:  ldloca.s   V_2
    IL_0067:  dup
    IL_0068:  ldobj      !'<Value>j__TPar'
    IL_006d:  box        !'<Value>j__TPar'
    IL_0072:  brtrue.s   IL_0078

    IL_0074:  pop
    IL_0075:  ldnull
    IL_0076:  br.s       IL_0083

    IL_0078:  constrained. !'<Value>j__TPar'
    IL_007e:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0083:  stelem.ref
    IL_0084:  call       string [mscorlib]System.String::Format(class [mscorlib]System.IFormatProvider,
                                                                string,
                                                                object[])
    IL_0089:  ret
  } // end of method '<>f__AnonymousType1`3'::ToString

  .property instance !'<Name>j__TPar' Name()
  {
    .get instance !'<Name>j__TPar' '<>f__AnonymousType1`3'::get_Name()
  } // end of property '<>f__AnonymousType1`3'::Name
  .property instance !'<age>j__TPar' age()
  {
    .get instance !'<age>j__TPar' '<>f__AnonymousType1`3'::get_age()
  } // end of property '<>f__AnonymousType1`3'::age
  .property instance !'<Value>j__TPar' Value()
  {
    .get instance !'<Value>j__TPar' '<>f__AnonymousType1`3'::get_Value()
  } // end of property '<>f__AnonymousType1`3'::Value
} // end of class '<>f__AnonymousType1`3'

.class private auto ansi beforefieldinit Project1.AnonymousType
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // 代码大小       121 (0x79)
    .maxstack  3
    .locals init ([0] class '<>f__AnonymousType0`2'<string,int32> AnonymousObject,
             [1] class [mscorlib]System.Type 'type',
             [2] class '<>f__AnonymousType1`3'<string,int32,class '<>f__AnonymousType0`2'<string,int32>> AnonymousObject2,
             [3] class '<>f__AnonymousType0`2'<string,int32> AnonymousObject3)
    IL_0000:  nop
    IL_0001:  ldstr      "name"
    IL_0006:  ldc.i4.s   123
    IL_0008:  newobj     instance void class '<>f__AnonymousType0`2'<string,int32>::.ctor(!0,
                                                                                          !1)
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0014:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_0019:  nop
    IL_001a:  ldloc.0
    IL_001b:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0020:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0025:  nop
    IL_0026:  ldloc.0
    IL_0027:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_002c:  stloc.1
    IL_002d:  ldstr      "name"
    IL_0032:  ldc.i4.s   123
    IL_0034:  ldloc.0
    IL_0035:  newobj     instance void class '<>f__AnonymousType1`3'<string,int32,class '<>f__AnonymousType0`2'<string,int32>>::.ctor(!0,
                                                                                                                                      !1,
                                                                                                                                      !2)
    IL_003a:  stloc.2
    IL_003b:  ldloc.2
    IL_003c:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0041:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_0046:  nop
    IL_0047:  ldloc.2
    IL_0048:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_004d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0052:  nop
    IL_0053:  ldstr      "name"
    IL_0058:  ldc.i4.s   123
    IL_005a:  newobj     instance void class '<>f__AnonymousType0`2'<string,int32>::.ctor(!0,
                                                                                          !1)
    IL_005f:  stloc.3
    IL_0060:  ldloc.3
    IL_0061:  callvirt   instance class [mscorlib]System.Type [mscorlib]System.Object::GetType()
    IL_0066:  call       void [mscorlib]System.Console::WriteLine(object)
    IL_006b:  nop
    IL_006c:  ldloc.3
    IL_006d:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0072:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0077:  nop
    IL_0078:  ret
  } // end of method AnonymousType::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 代码大小       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method AnonymousType::.ctor

} // end of class Project1.AnonymousType


// =============================================================

// *********** 反汇编完成 ***********************
// 警告: 创建了 Win32 资源文件 C:\Users\yueyi\Documents\Anonymous.res
