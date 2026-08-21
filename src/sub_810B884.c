#include "global.h"
#include "common.h"

// TODO: add other includes (a matching *.h, other subsystem headers) as
// this file grows. Left minimal since split_func.py doesn't know yet what
// sub_810B884 needs.

asm_unified(".include \"asm/macros.inc\"");

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B884.s\"");
#else
void sub_810B884(void *arg0) {
    s32 temp_r3_41;
    s32 temp_r3_46;
    s32 temp_r5_43;
    u16 temp_r0_9;
    u16 temp_r1_8;

    temp_r1_8 = (*(u16 *)((s8 *)(arg0) + (0x14)));
    temp_r0_9 = temp_r1_8 - 3;
    (*(u16 *)((s8 *)(arg0) + (0x14))) = temp_r0_9;
    if ((s32) (temp_r0_9 << 0x10) <= 0) {
        (*(s32 *)((s8 *)(arg0) + (4))) = 0;
        return;
    }
    (*(s16 *)((s8 *)((void *)0x0400001A) + (0))) = (s16) (M2C_ERROR(/* unknown instruction: ldsh $r0, ($mem_loc_fictive_) */) - (temp_r1_8 + 3));
    (*(s16 *)((s8 *)((void *)0x0400001A) + (4))) = (s16) (*(u16 *)0x0200001E - (*(u16 *)((s8 *)(arg0) + (0x14))));
    temp_r3_41 = M2C_ERROR(/* unknown instruction: ldsh $r3, ($mem_loc_fictive_) */);
    temp_r5_43 = temp_r3_41 - 0x99;
    temp_r3_46 = temp_r3_41 - 0x8E;
    *(s32 *)0x04000044 = (*(u16 *)0x0200001A - temp_r5_43) | ((*(u16 *)0x0200001A - temp_r3_46) << 8) | (((*(u16 *)0x0200001A - temp_r5_43) | ((*(u16 *)0x0200001A - temp_r3_46) << 8)) << 0x10);
}
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B908.s\"");
#else
#error "TODO: write sub_810B908 to match asm/nonmatching/sub_810B908.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810B99C.s\"");
#else
#error "TODO: write sub_810B99C to match asm/nonmatching/sub_810B99C.s, then delete this #error"
#endif

#ifndef NONMATCHING
asm_unified(".include \"asm/nonmatching/sub_810BD88.s\"");
#else
#error "TODO: write sub_810BD88 to match asm/nonmatching/sub_810BD88.s, then delete this #error"
#endif
