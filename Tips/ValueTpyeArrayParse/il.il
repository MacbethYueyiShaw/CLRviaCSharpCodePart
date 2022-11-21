
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.4084.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly ValueTpyeArrayParse
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 38 01 00 54   // ,Version=v4.8..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 12 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 2E 38 )                      // ework 4.8
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module ValueTpyeArrayParse.exe
// MVID: {ADEBAC4E-BA43-41E0-A679-24F1066EC0B0}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00020003    //  ILONLY 32BITPREFERRED
// Image base: 0x07080000


// =============== CLASS MEMBERS DECLARATION ===================

.class public sequential ansi serializable sealed beforefieldinit ValueTpyeArrayParse.Photo
       extends [mscorlib]System.ValueType
       implements class [mscorlib]System.IEquatable`1<valuetype ValueTpyeArrayParse.Photo>
{
  .field public uint32 id
  .field public string title
  .method public hidebysig newslot virtual final 
          instance bool  Equals(valuetype ValueTpyeArrayParse.Photo other) cil managed
  {
    // Code size       20 (0x14)
    .maxstack  2
    .locals init ([0] bool V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      uint32 ValueTpyeArrayParse.Photo::id
    IL_0007:  ldarg.1
    IL_0008:  ldfld      uint32 ValueTpyeArrayParse.Photo::id
    IL_000d:  ceq
    IL_000f:  stloc.0
    IL_0010:  br.s       IL_0012

    IL_0012:  ldloc.0
    IL_0013:  ret
  } // end of method Photo::Equals

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor(uint32 pid,
                               string name) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  stfld      uint32 ValueTpyeArrayParse.Photo::id
    IL_0008:  ldarg.0
    IL_0009:  ldarg.2
    IL_000a:  stfld      string ValueTpyeArrayParse.Photo::title
    IL_000f:  ret
  } // end of method Photo::.ctor

  .method public hidebysig virtual instance string 
          ToString() cil managed
  {
    // Code size       33 (0x21)
    .maxstack  2
    .locals init ([0] string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldflda     uint32 ValueTpyeArrayParse.Photo::id
    IL_0007:  call       instance string [mscorlib]System.UInt32::ToString()
    IL_000c:  ldarg.0
    IL_000d:  ldfld      string ValueTpyeArrayParse.Photo::title
    IL_0012:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0017:  call       string [mscorlib]System.String::Concat(string,
                                                                string)
    IL_001c:  stloc.0
    IL_001d:  br.s       IL_001f

    IL_001f:  ldloc.0
    IL_0020:  ret
  } // end of method Photo::ToString

} // end of class ValueTpyeArrayParse.Photo

.class public abstract auto ansi sealed beforefieldinit ValueTpyeArrayParse.PhotoArrayExtension
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static string 
          LogString(valuetype ValueTpyeArrayParse.Photo[] photos) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.ExtensionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       114 (0x72)
    .maxstack  4
    .locals init ([0] string res,
             [1] valuetype ValueTpyeArrayParse.Photo[] V_1,
             [2] int32 V_2,
             [3] valuetype ValueTpyeArrayParse.Photo item,
             [4] uint32 V_4,
             [5] string V_5)
    IL_0000:  nop
    IL_0001:  ldstr      ""
    IL_0006:  stloc.0
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  stloc.1
    IL_000a:  ldc.i4.0
    IL_000b:  stloc.2
    IL_000c:  br.s       IL_0064

    IL_000e:  ldloc.1
    IL_000f:  ldloc.2
    IL_0010:  ldelem     ValueTpyeArrayParse.Photo
    IL_0015:  stloc.3
    IL_0016:  nop
    IL_0017:  ldc.i4.6
    IL_0018:  newarr     [mscorlib]System.String
    IL_001d:  dup
    IL_001e:  ldc.i4.0
    IL_001f:  ldloc.0
    IL_0020:  stelem.ref
    IL_0021:  dup
    IL_0022:  ldc.i4.1
    IL_0023:  ldstr      "id:"
    IL_0028:  stelem.ref
    IL_0029:  dup
    IL_002a:  ldc.i4.2
    IL_002b:  ldloc.3
    IL_002c:  ldfld      uint32 ValueTpyeArrayParse.Photo::id
    IL_0031:  stloc.s    V_4
    IL_0033:  ldloca.s   V_4
    IL_0035:  call       instance string [mscorlib]System.UInt32::ToString()
    IL_003a:  stelem.ref
    IL_003b:  dup
    IL_003c:  ldc.i4.3
    IL_003d:  ldstr      "  title:"
    IL_0042:  stelem.ref
    IL_0043:  dup
    IL_0044:  ldc.i4.4
    IL_0045:  ldloc.3
    IL_0046:  ldfld      string ValueTpyeArrayParse.Photo::title
    IL_004b:  callvirt   instance string [mscorlib]System.Object::ToString()
    IL_0050:  stelem.ref
    IL_0051:  dup
    IL_0052:  ldc.i4.5
    IL_0053:  ldstr      "\n"
    IL_0058:  stelem.ref
    IL_0059:  call       string [mscorlib]System.String::Concat(string[])
    IL_005e:  stloc.0
    IL_005f:  nop
    IL_0060:  ldloc.2
    IL_0061:  ldc.i4.1
    IL_0062:  add
    IL_0063:  stloc.2
    IL_0064:  ldloc.2
    IL_0065:  ldloc.1
    IL_0066:  ldlen
    IL_0067:  conv.i4
    IL_0068:  blt.s      IL_000e

    IL_006a:  ldloc.0
    IL_006b:  stloc.s    V_5
    IL_006d:  br.s       IL_006f

    IL_006f:  ldloc.s    V_5
    IL_0071:  ret
  } // end of method PhotoArrayExtension::LogString

} // end of class ValueTpyeArrayParse.PhotoArrayExtension

.class private auto ansi beforefieldinit ValueTpyeArrayParse.PhotosManager
       extends [mscorlib]System.Object
{
  .field private valuetype ValueTpyeArrayParse.Photo[] mPhotos
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       57 (0x39)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldarg.0
    IL_0009:  ldc.i4.2
    IL_000a:  newarr     ValueTpyeArrayParse.Photo
    IL_000f:  dup
    IL_0010:  ldc.i4.0
    IL_0011:  ldc.i4.1
    IL_0012:  ldstr      "1"
    IL_0017:  newobj     instance void ValueTpyeArrayParse.Photo::.ctor(uint32,
                                                                        string)
    IL_001c:  stelem     ValueTpyeArrayParse.Photo
    IL_0021:  dup
    IL_0022:  ldc.i4.1
    IL_0023:  ldc.i4.2
    IL_0024:  ldstr      "2"
    IL_0029:  newobj     instance void ValueTpyeArrayParse.Photo::.ctor(uint32,
                                                                        string)
    IL_002e:  stelem     ValueTpyeArrayParse.Photo
    IL_0033:  stfld      valuetype ValueTpyeArrayParse.Photo[] ValueTpyeArrayParse.PhotosManager::mPhotos
    IL_0038:  ret
  } // end of method PhotosManager::.ctor

  .method public hidebysig instance valuetype ValueTpyeArrayParse.Photo[]& 
          GetPhotoRef() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] valuetype ValueTpyeArrayParse.Photo[]& V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldflda     valuetype ValueTpyeArrayParse.Photo[] ValueTpyeArrayParse.PhotosManager::mPhotos
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method PhotosManager::GetPhotoRef

  .method public hidebysig instance valuetype ValueTpyeArrayParse.Photo[] 
          GetPhotos() cil managed
  {
    // Code size       12 (0xc)
    .maxstack  1
    .locals init ([0] valuetype ValueTpyeArrayParse.Photo[] V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype ValueTpyeArrayParse.Photo[] ValueTpyeArrayParse.PhotosManager::mPhotos
    IL_0007:  stloc.0
    IL_0008:  br.s       IL_000a

    IL_000a:  ldloc.0
    IL_000b:  ret
  } // end of method PhotosManager::GetPhotos

  .method public hidebysig instance void 
          LogArray() cil managed
  {
    // Code size       19 (0x13)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      valuetype ValueTpyeArrayParse.Photo[] ValueTpyeArrayParse.PhotosManager::mPhotos
    IL_0007:  call       string ValueTpyeArrayParse.PhotoArrayExtension::LogString(valuetype ValueTpyeArrayParse.Photo[])
    IL_000c:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0011:  nop
    IL_0012:  ret
  } // end of method PhotosManager::LogArray

} // end of class ValueTpyeArrayParse.PhotosManager

.class private auto ansi beforefieldinit ValueTpyeArrayParse.Entry
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main() cil managed
  {
    .entrypoint
    // Code size       104 (0x68)
    .maxstack  2
    .locals init ([0] class ValueTpyeArrayParse.PhotosManager photosManager,
             [1] valuetype ValueTpyeArrayParse.Photo[] p,
             [2] valuetype ValueTpyeArrayParse.Photo[] p2)
    IL_0000:  nop
    IL_0001:  newobj     instance void ValueTpyeArrayParse.PhotosManager::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldloc.0
    IL_0008:  callvirt   instance valuetype ValueTpyeArrayParse.Photo[]& ValueTpyeArrayParse.PhotosManager::GetPhotoRef()
    IL_000d:  ldind.ref
    IL_000e:  stloc.1
    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.1
    IL_0011:  ldelema    ValueTpyeArrayParse.Photo
    IL_0016:  ldc.i4.3
    IL_0017:  stfld      uint32 ValueTpyeArrayParse.Photo::id
    IL_001c:  ldloc.1
    IL_001d:  call       string ValueTpyeArrayParse.PhotoArrayExtension::LogString(valuetype ValueTpyeArrayParse.Photo[])
    IL_0022:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0027:  nop
    IL_0028:  ldloc.0
    IL_0029:  callvirt   instance void ValueTpyeArrayParse.PhotosManager::LogArray()
    IL_002e:  nop
    IL_002f:  ldloc.0
    IL_0030:  callvirt   instance valuetype ValueTpyeArrayParse.Photo[] ValueTpyeArrayParse.PhotosManager::GetPhotos()
    IL_0035:  stloc.2
    IL_0036:  ldloc.2
    IL_0037:  ldc.i4.0
    IL_0038:  ldelema    ValueTpyeArrayParse.Photo
    IL_003d:  ldc.i4.4
    IL_003e:  stfld      uint32 ValueTpyeArrayParse.Photo::id
    IL_0043:  ldloc.1
    IL_0044:  call       string ValueTpyeArrayParse.PhotoArrayExtension::LogString(valuetype ValueTpyeArrayParse.Photo[])
    IL_0049:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_004e:  nop
    IL_004f:  ldloc.0
    IL_0050:  callvirt   instance void ValueTpyeArrayParse.PhotosManager::LogArray()
    IL_0055:  nop
    IL_0056:  ldstr      "press anykey to exit"
    IL_005b:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0060:  nop
    IL_0061:  call       string [mscorlib]System.Console::ReadLine()
    IL_0066:  pop
    IL_0067:  ret
  } // end of method Entry::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       8 (0x8)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method Entry::.ctor

} // end of class ValueTpyeArrayParse.Entry


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\Users\yix\Desktop\CLRviaCSharpCodePart\Tips\ValueTpyeArrayParse\il.res
