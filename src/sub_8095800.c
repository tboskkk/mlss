#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8095800 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095800.s\"");
#else
extern void sub_8095860();

void sub_8095800(u8* param_1) {
  u8* puVar1;
  u32* puVar2;
  u32 uVar3;
  u32 uVar4;
  u32 uVar5;
  
  puVar1 = param_1 + 0x76;
  if (((*(u8*)puVar1 & 6) == 2) || ((*(u8*)puVar1 & 6) == 4)) {
    puVar2 = (u32*)0x3001038;
    uVar3 = 0x819832C;
    uVar4 = 0x8198220;
    uVar5 = uVar3 - uVar4;
    puVar2 = (u32*)((u8*)puVar2 + uVar5);
    uVar3 = 0x8000;
    uVar4 = 0x8;
    (*(code*)puVar2)(uVar3, uVar4);
    *(u16*)(param_1 + 0x7A) = (u16)uVar3;
    *(u16*)(param_1 + 0x7E) = 0;
    puVar1 = param_1 + 0x79;
    *(u8*)puVar1 = (*(u8*)puVar1 & 0xDF);
  }
  *(u32*)((u8*)param_1 + 0x4C) = (u32)sub_8095860;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095860.s\"");
#else
#error "TODO: write sub_8095860 to match asm/nonmatching/sub_8095860.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80958F0.s\"");
#else
#error "TODO: write sub_80958F0 to match asm/nonmatching/sub_80958F0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095B30.s\"");
#else
#error "TODO: write sub_8095B30 to match asm/nonmatching/sub_8095B30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095D54.s\"");
#else
#error "TODO: write sub_8095D54 to match asm/nonmatching/sub_8095D54.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8095E04.s\"");
#else
#error "TODO: write sub_8095E04 to match asm/nonmatching/sub_8095E04.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80962C4.s\"");
#else
#error "TODO: write sub_80962C4 to match asm/nonmatching/sub_80962C4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096364.s\"");
#else
#error "TODO: write sub_8096364 to match asm/nonmatching/sub_8096364.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80963E4.s\"");
#else
#error "TODO: write sub_80963E4 to match asm/nonmatching/sub_80963E4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096494.s\"");
#else
#error "TODO: write sub_8096494 to match asm/nonmatching/sub_8096494.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096554.s\"");
#else
#error "TODO: write sub_8096554 to match asm/nonmatching/sub_8096554.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096608.s\"");
#else
#error "TODO: write sub_8096608 to match asm/nonmatching/sub_8096608.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80967A4.s\"");
#else
#error "TODO: write sub_80967A4 to match asm/nonmatching/sub_80967A4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80969FC.s\"");
#else
#error "TODO: write sub_80969FC to match asm/nonmatching/sub_80969FC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096C4C.s\"");
#else
#error "TODO: write sub_8096C4C to match asm/nonmatching/sub_8096C4C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096D8C.s\"");
#else
#error "TODO: write sub_8096D8C to match asm/nonmatching/sub_8096D8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096E08.s\"");
#else
#error "TODO: write sub_8096E08 to match asm/nonmatching/sub_8096E08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096E44.s\"");
#else
#error "TODO: write sub_8096E44 to match asm/nonmatching/sub_8096E44.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096E6C.s\"");
#else
#error "TODO: write sub_8096E6C to match asm/nonmatching/sub_8096E6C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096EBC.s\"");
#else
#error "TODO: write sub_8096EBC to match asm/nonmatching/sub_8096EBC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096F08.s\"");
#else
#error "TODO: write sub_8096F08 to match asm/nonmatching/sub_8096F08.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096F60.s\"");
#else
#error "TODO: write sub_8096F60 to match asm/nonmatching/sub_8096F60.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8096FCC.s\"");
#else
#error "TODO: write sub_8096FCC to match asm/nonmatching/sub_8096FCC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097024.s\"");
#else
#error "TODO: write sub_8097024 to match asm/nonmatching/sub_8097024.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809706C.s\"");
#else
#error "TODO: write sub_809706C to match asm/nonmatching/sub_809706C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80970B8.s\"");
#else
#error "TODO: write sub_80970B8 to match asm/nonmatching/sub_80970B8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_809714C.s\"");
#else
#error "TODO: write sub_809714C to match asm/nonmatching/sub_809714C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80974F8.s\"");
#else
#error "TODO: write sub_80974F8 to match asm/nonmatching/sub_80974F8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097648.s\"");
#else
#error "TODO: write sub_8097648 to match asm/nonmatching/sub_8097648.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80976D0.s\"");
#else
#error "TODO: write sub_80976D0 to match asm/nonmatching/sub_80976D0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097978.s\"");
#else
#error "TODO: write sub_8097978 to match asm/nonmatching/sub_8097978.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097A90.s\"");
#else
#error "TODO: write sub_8097A90 to match asm/nonmatching/sub_8097A90.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097B8C.s\"");
#else
#error "TODO: write sub_8097B8C to match asm/nonmatching/sub_8097B8C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097C38.s\"");
#else
#error "TODO: write sub_8097C38 to match asm/nonmatching/sub_8097C38.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097CB4.s\"");
#else
#error "TODO: write sub_8097CB4 to match asm/nonmatching/sub_8097CB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097D50.s\"");
#else
#error "TODO: write sub_8097D50 to match asm/nonmatching/sub_8097D50.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097DB4.s\"");
#else
#error "TODO: write sub_8097DB4 to match asm/nonmatching/sub_8097DB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097E28.s\"");
#else
#error "TODO: write sub_8097E28 to match asm/nonmatching/sub_8097E28.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097EB4.s\"");
#else
#error "TODO: write sub_8097EB4 to match asm/nonmatching/sub_8097EB4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097F10.s\"");
#else
#error "TODO: write sub_8097F10 to match asm/nonmatching/sub_8097F10.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097F30.s\"");
#else
#error "TODO: write sub_8097F30 to match asm/nonmatching/sub_8097F30.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8097FC4.s\"");
#else
#error "TODO: write sub_8097FC4 to match asm/nonmatching/sub_8097FC4.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098198.s\"");
#else
#error "TODO: write sub_8098198 to match asm/nonmatching/sub_8098198.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80982DC.s\"");
#else
#error "TODO: write sub_80982DC to match asm/nonmatching/sub_80982DC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8098364.s\"");
#else
#error "TODO: write sub_8098364 to match asm/nonmatching/sub_8098364.s, then delete this #error"
#endif
