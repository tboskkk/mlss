#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80F7590 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7590.s\"");
#else
u32* sub_80F7590(u32* param_1) {
    u32* puVar1;
    u32* puVar2;
    
    puVar1 = (u32*)0x03000FD8;
    puVar1 = (u32*)((u32)puVar1 + 0x244);
    puVar2 = (u32*)0x00001788;
    puVar2 = (u32*)((u32)puVar2 + (u32)puVar1);
    *puVar2 = (*puVar2 & ~*param_1);
    return param_1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F75B4.s\"");
#else
void sub_80F75B4(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) | arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F75D8.s\"");
#else
void sub_80F75D8(s32 arg0) {
    void *temp_r2_12;

    temp_r2_12 = (*(void **)((s8 *)((*(void **)((s8 *)(*(void **)0x03000FD8) + (0x244)))) + (0x2C)));
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1788))) | arg0);
    (*(s32 *)((s8 *)(temp_r2_12) + (0x1798))) = (s32) ((*(s32 *)((s8 *)(temp_r2_12) + (0x1798))) | arg0);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7608.s\"");
#else
s32 sub_810C950();                              /* extern */
s32 sub_810CA30();                              /* extern */

void sub_80F7608(u8 arg0) {
    u8 temp_r4_8;
    void *temp_r2_17;

    temp_r4_8 = arg0;
    if (temp_r4_8 != 0) {
        sub_810CA30();
    } else {
        sub_810C950();
    }
    temp_r2_17 = *(void **)0x03000FD8;
    (*(u8 *)((s8 *)(temp_r2_17) + (0x2BF))) = (u8) ((-2 & (*(u8 *)((s8 *)(temp_r2_17) + (0x2BF)))) | (1 & temp_r4_8));
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F7644.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80F76B8.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif
