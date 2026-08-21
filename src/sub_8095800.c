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
