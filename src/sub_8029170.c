#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_8029170 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_8029170.s\"");
#else
s32 sub_81165CC(s32, s32);                      /* extern */

void sub_8029170(void *arg0, s32 arg1) {
    s32 var_r1_26;
    u32 temp_r0_13;

    temp_r0_13 = (u32) ((*(u8 *)((s8 *)(arg0) + (0xFC))) << 0x19) >> 0x1C;
    switch (temp_r0_13) {                           /* irregular */
    case 1:
        sub_81165CC((*(s32 *)((s8 *)(arg0) + (0x314))), arg1);
        var_r1_26 = arg1 + 1;
block_5:
        (*(u8 *)((s8 *)(arg0) + (0xFC))) = (u8) ((-0x79 & (*(u8 *)((s8 *)(arg0) + (0xFC)))) | ((var_r1_26 & 0xF) * 8));
        return;
    case 2:
        sub_81165CC((*(s32 *)((s8 *)(arg0) + (0x314))), arg1);
        var_r1_26 = 2 - arg1;
        goto block_5;
    }
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80291C8.s\"");
#else
#error "TODO: write sub_80291C8 to match asm/nonmatching/sub_80291C8.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80291EC.s\"");
#else
#error "TODO: write sub_80291EC to match asm/nonmatching/sub_80291EC.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80292A0.s\"");
#else
#error "TODO: write sub_80292A0 to match asm/nonmatching/sub_80292A0.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_80292EC.s\"");
#else
#error "TODO: write sub_80292EC to match asm/nonmatching/sub_80292EC.s, then delete this #error"
#endif
