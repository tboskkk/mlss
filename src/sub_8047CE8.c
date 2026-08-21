#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8047CE8 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047CE8.s\"");
#else
u32 sub_8047CE8(u8* param_1) {
  u8* puVar1;
  u32 uVar2;
  u32 uVar3;
  
  *(u8*)param_1 = 0xff;
  *(u8*)(param_1 + 0x01) = 0xff;
  *(u8*)(param_1 + 0x00) = 0xff;
  puVar1 = param_1 + 0x24;
  uVar2 = *(u16*)puVar1;
  *(u16*)puVar1 = uVar2 & 0x00000180;
  uVar3 = *(u16*)(param_1 + 0x24);
  *(u32*)(param_1 + 0x24) = uVar3 & 0x00000180;
  return uVar3 & 0x00000180;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047D44.s\"");
#else
s32 sub_8116654(s32, u8);                       /* extern */

void sub_8047D44(void *arg0) {
    sub_8116654((*(s32 *)((s8 *)(arg0) + (0x334))), (*(u8 *)((s8 *)(arg0) + (0x26E))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047D64.s\"");
#else
s32 sub_8116680(s32, u8);                       /* extern */

void sub_8047D64(void *arg0) {
    sub_8116680((*(s32 *)((s8 *)(arg0) + (0x334))), (*(u8 *)((s8 *)(arg0) + (0x26E))));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047D84.s\"");
#else
s32 sub_8115048(s32, u8, u8);                   /* extern */

void sub_8047D84(void *arg0, u8 arg1) {
    sub_8115048((*(s32 *)((s8 *)(arg0) + (0x334))), (*(u8 *)((s8 *)(arg0) + (0x26E))), arg1);
    (*(u8 *)((s8 *)(arg0) + (0x20E))) = (u8) (-0x41 & (*(u8 *)((s8 *)(arg0) + (0x20E))));
    (*(u8 *)((s8 *)(arg0) + (0x26E))) = 0xFFU;
    (*(s16 *)((s8 *)(arg0) + (0x26C))) = 0xFFFF;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047DC8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047E50.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8047EB8.s\"");
#else
void sub_8047EB8(void *arg0) {
    (*(s32 *)((s8 *)(arg0) + (0x25C))) = -1;
    (*(u8 *)((s8 *)(arg0) + (0x213))) = (u8) (-0x21 & (*(u8 *)((s8 *)(arg0) + (0x213))));
    (*(s32 *)((s8 *)(arg0) + (0x250))) = -1;
    (*(s32 *)((s8 *)(arg0) + (0x24C))) = -1;
    (*(u16 *)((s8 *)(arg0) + (0x23E))) = (u16) (*(u16 *)((s8 *)(arg0) + (0x240)));
}
#endif
