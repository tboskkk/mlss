#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_80EAD7C needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAD7C.s\"");
#else
u32 sub_80EAD7C(u32 param_1) {
    u32 *ptr = (u32 *)0x03000D44;
    u8 *addr1;
    u8 *addr2;

    addr1 = (u8 *)(ptr[0] + 0x26);
    *addr1 = (u8)param_1;
    addr2 = (u8 *)(ptr[0] + 0x27);
    *addr2 = (u8)(param_1 >> 8);
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EAD98.s\"");
#else
/* Undraftable by m2c: its seed did not compile. Deliberately left empty so
   the REST of this translation unit still builds and can be diffed under
   NONMATCHING=1. The #ifndef branch above is unaffected -- the real ROM
   still gets the verbatim retail bytes. */
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EADC4.s\"");
#else
s32 sub_801BBE4(s32, s32, s32, s32);    /* extern */

s32 sub_80EADC4(s32 arg0, s32 arg1, s32 arg2) {
    sub_801BBE4(*(s32 *)0x03000D44, M2C_ERROR(/* unknown instruction: ldsb $r1, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsb $r4, ($mem_loc_fictive_) */), M2C_ERROR(/* unknown instruction: ldsb $r3, ($mem_loc_fictive_) */));
    return 1;
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80EADEC.s\"");
#else
s32 sub_80EADEC(s32 arg0, void **arg1, void *arg2, s32 *arg3) {
    s32 temp_r1_16;
    u32 temp_r0_30;
    u32 var_r3_9;
    void *var_r2_10;

    var_r3_9 = 0;
    var_r2_10 = *arg1;
loop_1:
    if (((*(u8 *)((s8 *)(var_r2_10) + (0xF))) != 0) && ((temp_r1_16 = *arg3, ((*(u8 *)((s8 *)(var_r2_10) + (0xC))) == temp_r1_16)) || (temp_r1_16 == 0x3F))) {
        (*(s32 *)((s8 *)(arg2) + (0))) = (s32) (*(s32 *)((s8 *)(arg2) + (0x14)));
        return 0;
    }
    temp_r0_30 = (var_r3_9 << 0x10) + 0x10000;
    var_r2_10 += 0x10;
    var_r3_9 = temp_r0_30 >> 0x10;
    if ((s32) ((s32) temp_r0_30 >> 0x10) > 3) {
        return 1;
    }
    goto loop_1;
}
#endif
