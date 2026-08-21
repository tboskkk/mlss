#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_819A9B4 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A9B4.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819A9DC.s\"");
#else
u16 sub_819A9DC(u16 a)
{
    u32* r1 = (u32*)0x04000070;
    u16* r0 = (u16*)((a << 4) + 0x0821DB5E);
    u16* r3 = (u16*)0x04000090;
    *r1 = 0xC0;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r0++;
    r3++;
    *r3 = *r0;
    r3++;
    *r0 = *r3;
    r1 = (u32*)0x04000070;
    *r1 = 0x80;
    return a;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_819AA38.s\"");
#else
s32 sub_819A770(void *);                            /* extern */
s16 sub_819A96C(u16);                               /* extern */

void sub_819AA38(void *arg0) {
    u16 var_r4_21;

    var_r4_21 = (u16) (((*(u8 *)((s8 *)(arg0) + (0xB))) << 8) + ((*(u8 *)((s8 *)(arg0) + (0xF))) * M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */))) + M2C_ERROR(/* unknown instruction: ldsb $r0, ($mem_loc_fictive_) */);
    if (0x100 & (*(u16 *)((s8 *)(arg0) + (0)))) {
        var_r4_21 += sub_819A770(arg0);
    }
    (*(s16 *)((s8 *)((*(s32 *)0x03007FF0 + ((3 & (*(u8 *)((s8 *)(arg0) + (0x12)))) * 0xC))) + (0x4D0))) = sub_819A96C(var_r4_21);
}
#endif
